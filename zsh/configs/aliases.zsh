# Unix
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

alias vimrc="$EDITOR $HOME/.vim/vimrc"
alias vundles="$EDITOR $HOME/.vim/vimrc.bundles"

# Include custom aliases
[[ -f $HOME/.zsh/configs/aliases.local ]] && source $HOME/.zsh/configs/aliases.local
