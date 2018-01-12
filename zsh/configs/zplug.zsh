source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "lib/completion", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "plugins/heroku", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-completions", from:github
zplug "zsh-users/zsh-history-substring-search", from:github

zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme

if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_PROMPT_SYMBOL=❯
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=bg=yellow,fg=black
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=bg=red,fg=black
