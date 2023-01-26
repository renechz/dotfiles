export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'mafredri/zsh-async'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-completions', defer:2
zplug 'zsh-users/zsh-autosuggestions', defer:2

zplug load

for zsh_source in $HOME/.zsh/configs/*.zsh; do
  source $zsh_source
done

source $HOME/.zsh/aliases.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh

[ -f ~/.zsh/zshrc.local ] && source ~/.zsh/zshrc.local

export PATH="$HOME/.bin:$PATH"
