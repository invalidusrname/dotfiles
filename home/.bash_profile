if [ -r $HOME/.custom_functions ]; then
  source $HOME/.custom_functions
fi                                

if [ -r $HOME/.custom_variables ]; then
  source $HOME/.custom_variables
fi                                

if [ -r $HOME/.custom_aliases ]; then
  source $HOME/.custom_aliases
fi                                

if [ -r $HOME/.private_vars ]; then
  source $HOME/.private_vars
fi

# OSX specific
if [[ `uname` == 'Darwin' && -f $HOME/.osx_profile ]]; then
  source "$HOME/.osx_profile"
  #export PATH="/usr/local/mysql/bin/:./bin:/usr/local/bin:/usr/local/sbin:$PATH"
fi

if [[ `uname` == "Linux" ]]; then
  eval `dircolors $HOME/dev/play/gnome-terminal-colors-solarized/dircolors`
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


complete -C /usr/local/bin/vault vault

