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

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#source <(kubectl completion bash)

export PATH="/usr/local/mysql/bin/:./bin:/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:$PATH"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

eval "$(rbenv init -)"

complete -C /usr/local/bin/vault vault

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages:${PATH}"
export PATH

if [ -d '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk' ]; then
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
fi

source <(kubectl completion bash)
