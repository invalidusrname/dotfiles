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
fi

if [[ `uname` == "Linux" ]]; then
  eval `dircolors $HOME/dev/play/gnome-terminal-colors-solarized/dircolors`
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


export PATH="$PATH:/Users/matt/.local/bin"

complete -C /usr/local/bin/vault vault

