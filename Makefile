SHELL := /bin/sh
.DEFAULT_GOAL := install

DOTFILES_DIR := $(CURDIR)
HOME_DIR := $(HOME)

LINK_EXCLUDES := README.md LICENSE install Makefile scripts/* dependencies/* .* *.local config/zsh/zshrc.local tmux/tmux.conf.local vim/vimrc.local vim/vimrc.bundles.local git_template.local/*
COPY_RULES := git_template/HEAD
REPO_FILE_LIST_CMD = find . -type f ! -path './.git/*' ! -path './.github/*' ! -path './.jj/*' | sed 's|^./||'
UNLINK_SCAN_DIRS := $(HOME_DIR)/.config/zsh $(HOME_DIR)/.vim $(HOME_DIR)/.tmux $(HOME_DIR)/.git_template $(HOME_DIR)/.ctags.d $(HOME_DIR)/.bin
DELETE ?= 0

.PHONY: help bootstrap install link seed-local clean doctor unlink delete

ifneq (,$(filter delete,$(MAKECMDGOALS)))
DELETE := 1
endif

delete:
	@:

help: ## Show available targets.
	@grep -E '^[a-zA-Z0-9_.-]+:.*## ' Makefile | sort | awk 'BEGIN {FS = ":.*## "}; {printf "%-16s %s\n", $$1, $$2}'

bootstrap: ## Install dependencies.
	@./scripts/bootstrap

install: bootstrap link seed-local

link: ## Link managed dotfiles into HOME.
	@set -eu; \
	matches_any() { candidate="$$1"; shift; for pat in "$$@"; do case "$$candidate" in $$pat) return 0 ;; esac; done; return 1; }; \
	map_dest() { rel="$$1"; case "$$rel" in */*) top=$${rel%%/*}; tail=$${rel#*/}; case "$$top" in .*) printf '%s/%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; *) printf '%s/.%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; esac ;; *) case "$$rel" in .*) printf '%s/%s\n' "$(HOME_DIR)" "$$rel" ;; *) printf '%s/.%s\n' "$(HOME_DIR)" "$$rel" ;; esac ;; esac; }; \
	tmp_file="$$(mktemp)"; \
	$(REPO_FILE_LIST_CMD) > "$$tmp_file"; \
	while IFS= read -r rel; do \
		matches_any "$$rel" $(LINK_EXCLUDES) && continue; \
		src="$(DOTFILES_DIR)/$$rel"; \
		dst="$$(map_dest "$$rel")"; \
		mkdir -p "$$(dirname "$$dst")"; \
		if matches_any "$$rel" $(COPY_RULES); then \
			rm -f "$$dst"; \
			cp "$$src" "$$dst"; \
		else \
			ln -sfn "$$src" "$$dst"; \
		fi; \
	done < "$$tmp_file"; \
	rm -f "$$tmp_file"

seed-local: ## Seed local boilerplate files once.
	@set -eu; \
	map_dest() { rel="$$1"; case "$$rel" in */*) top=$${rel%%/*}; tail=$${rel#*/}; case "$$top" in .*) printf '%s/%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; *) printf '%s/.%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; esac ;; *) case "$$rel" in .*) printf '%s/%s\n' "$(HOME_DIR)" "$$rel" ;; *) printf '%s/.%s\n' "$(HOME_DIR)" "$$rel" ;; esac ;; esac; }; \
	tmp_file="$$(mktemp)"; \
	$(REPO_FILE_LIST_CMD) > "$$tmp_file"; \
	while IFS= read -r src_rel; do \
		printf '%s\n' "$$src_rel" | grep -Eq '(^|/)[^/]*\.local(/|$$)' || continue; \
		src="$(DOTFILES_DIR)/$$src_rel"; \
		dst="$$(map_dest "$$src_rel")"; \
		mkdir -p "$$(dirname "$$dst")"; \
		if [ ! -e "$$dst" ]; then \
			cp "$$src" "$$dst"; \
			case "$$dst" in \
				$(HOME_DIR)/.git_template.local/hooks/*) chmod +x "$$dst" ;; \
			esac; \
		fi; \
	done < "$$tmp_file"; \
	rm -f "$$tmp_file"

clean: ## Remove managed links owned by this repo.
	@set -eu; \
	matches_any() { candidate="$$1"; shift; for pat in "$$@"; do case "$$candidate" in $$pat) return 0 ;; esac; done; return 1; }; \
	map_dest() { rel="$$1"; case "$$rel" in */*) top=$${rel%%/*}; tail=$${rel#*/}; case "$$top" in .*) printf '%s/%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; *) printf '%s/.%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; esac ;; *) case "$$rel" in .*) printf '%s/%s\n' "$(HOME_DIR)" "$$rel" ;; *) printf '%s/.%s\n' "$(HOME_DIR)" "$$rel" ;; esac ;; esac; }; \
	tmp_file="$$(mktemp)"; \
	$(REPO_FILE_LIST_CMD) > "$$tmp_file"; \
	while IFS= read -r rel; do \
		matches_any "$$rel" $(LINK_EXCLUDES) $(COPY_RULES) && continue; \
		src="$(DOTFILES_DIR)/$$rel"; \
		dst="$$(map_dest "$$rel")"; \
		if [ -L "$$dst" ] && [ "$$(readlink "$$dst")" = "$$src" ]; then \
			rm -f "$$dst"; \
		fi; \
	done < "$$tmp_file"; \
	rm -f "$$tmp_file"

unlink: ## List orphan managed files (use DELETE=1 or 'make unlink delete' to remove).
	@set -eu; \
	map_dest() { rel="$$1"; case "$$rel" in */*) top=$${rel%%/*}; tail=$${rel#*/}; case "$$top" in .*) printf '%s/%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; *) printf '%s/.%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; esac ;; *) case "$$rel" in .*) printf '%s/%s\n' "$(HOME_DIR)" "$$rel" ;; *) printf '%s/.%s\n' "$(HOME_DIR)" "$$rel" ;; esac ;; esac; }; \
	orphans="$$(mktemp)"; \
	find "$(HOME_DIR)" -maxdepth 1 -type l 2>/dev/null | while IFS= read -r dst; do \
		src="$$(readlink "$$dst" 2>/dev/null || true)"; \
		case "$$src" in "$(DOTFILES_DIR)"/*) [ -e "$$src" ] || printf 'symlink\t%s\t%s\n' "$$dst" "$$src" >> "$$orphans" ;; esac; \
	done; \
	for scan_dir in $(UNLINK_SCAN_DIRS); do \
		[ -d "$$scan_dir" ] || continue; \
		find "$$scan_dir" -maxdepth 6 -type l 2>/dev/null | while IFS= read -r dst; do \
		src="$$(readlink "$$dst" 2>/dev/null || true)"; \
		case "$$src" in "$(DOTFILES_DIR)"/*) [ -e "$$src" ] || printf 'symlink\t%s\t%s\n' "$$dst" "$$src" >> "$$orphans" ;; esac; \
		done; \
	done; \
	for rel in $(COPY_RULES); do \
		src="$(DOTFILES_DIR)/$$rel"; \
		dst="$$(map_dest "$$rel")"; \
		if [ ! -e "$$src" ] && [ -e "$$dst" ] && [ ! -L "$$dst" ]; then \
			printf 'copy\t%s\t%s\n' "$$dst" "$$src" >> "$$orphans"; \
		fi; \
	done; \
	sort -u "$$orphans" -o "$$orphans"; \
	if [ ! -s "$$orphans" ]; then \
		echo "unlink: no orphan managed files found"; \
		rm -f "$$orphans"; \
		exit 0; \
	fi; \
	echo "unlink: orphan managed files"; \
	awk -F '\t' '{printf "- [%s] %s (missing source: %s)\n", $$1, $$2, $$3}' "$$orphans"; \
	if [ "$(DELETE)" = "1" ]; then \
		echo "unlink: deleting orphan managed files"; \
		cut -f2 "$$orphans" | while IFS= read -r dst; do rm -f "$$dst"; done; \
	else \
		echo "unlink: dry run only (use 'make unlink DELETE=1' or 'make unlink delete' to delete)"; \
	fi; \
	rm -f "$$orphans"

doctor: ## Validate expected managed files and links.
	@set -eu; \
	matches_any() { candidate="$$1"; shift; for pat in "$$@"; do case "$$candidate" in $$pat) return 0 ;; esac; done; return 1; }; \
	map_dest() { rel="$$1"; case "$$rel" in */*) top=$${rel%%/*}; tail=$${rel#*/}; case "$$top" in .*) printf '%s/%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; *) printf '%s/.%s/%s\n' "$(HOME_DIR)" "$$top" "$$tail" ;; esac ;; *) case "$$rel" in .*) printf '%s/%s\n' "$(HOME_DIR)" "$$rel" ;; *) printf '%s/.%s\n' "$(HOME_DIR)" "$$rel" ;; esac ;; esac; }; \
	status=0; \
	tmp_file="$$(mktemp)"; \
	$(REPO_FILE_LIST_CMD) > "$$tmp_file"; \
	while IFS= read -r rel; do \
		matches_any "$$rel" $(LINK_EXCLUDES) && continue; \
		src="$(DOTFILES_DIR)/$$rel"; \
		dst="$$(map_dest "$$rel")"; \
		if matches_any "$$rel" $(COPY_RULES); then \
			if [ ! -e "$$dst" ] || [ -L "$$dst" ]; then \
				echo "doctor: expected copied file at $$dst"; \
				status=1; \
			fi; \
		else \
			if [ ! -L "$$dst" ]; then \
				echo "doctor: expected symlink at $$dst"; \
				status=1; \
			elif [ "$$(readlink "$$dst")" != "$$src" ]; then \
				echo "doctor: wrong symlink target at $$dst"; \
				status=1; \
			fi; \
		fi; \
	done < "$$tmp_file"; \
	rm -f "$$tmp_file"; \
	if [ "$$status" -ne 0 ]; then \
		echo "doctor: problems found"; \
		exit 1; \
	fi; \
	echo "doctor: all managed files look good"
