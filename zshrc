# Colors
# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1


# FZF
export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# General
export VISUAL=vim
export EDITOR=$VISUAL

# https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1

# Keybindings
# give us access to ^Q
stty -ixon

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey "^Q" push-line-or-edit


# POST
# Completions
# completion; use cache if updated within 24h
autoload -Uz compinit
if [[ -n $HOME/.zcompdump(#qN.mh+24) ]]; then
  compinit -d $HOME/.zcompdump;
else
  compinit -C;
fi;

# ZOXIDE
eval "$(zoxide init zsh)"

# PATH

PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# mkdir .git/safe in the root of trusted repositories
PATH=".git/safe/../../bin:$PATH"
# PATH="$HOME/bin:$PATH"
# PATH="$HOME/.npm-packages/bin:$PATH"


export -U PATH

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# export PATH="/opt/homebrew/bin:$PATH"
# export PATH="$HOME/bin:$PATH"
# export PATH="$HOME/.bin:$PATH"
#
# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

