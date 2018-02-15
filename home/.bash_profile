if [ -r $HOME/.custom_functions ];
then
  source $HOME/.custom_functions
fi                                

if [ -r $HOME/.custom_variables ];
then
  source $HOME/.custom_variables
fi                                

if [ -r $HOME/.custom_aliases ];
then
  source $HOME/.custom_aliases
fi                                

# OSX specific
if [[ `uname` == 'Darwin' && -f $HOME/.osx_profile ]]; then
  source "$HOME/.osx_profile"
fi

if [[ -f $HOME/.private_vars ]]; then
  source "$HOME/.private_vars"
fi

export PATH="./bin:/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:$PATH"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

eval "$(rbenv init -)"

