set -x FZF_DEFAULT_COMMAND 'fd --type file --follow --hidden --exclude .git'
set -x FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -x FZF_TMUX 1
