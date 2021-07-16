if test -f "$HOME/.asdf/asdf.fish"
  source "$HOME/.asdf/asdf.fish"
else if test -e (which brew)
  and test -f (brew --prefix asdf)/asdf.fish
  source (brew --prefix asdf)/asdf.fish
end

# ensure dotfiles bin directory is loaded first
fish_add_path -v "$HOME/.bin" "/usr/local/sbin"

# mkdir .git/safe in the root of repositories you trust
fish_add_path -v ".git/safe/../../bin"
