function tm
  if not set -q TMUX
    set -g TMUX tmux new-session -d -s $argv
    eval $TMUX
    tmux attach-session -d -t $argv
  end
end
