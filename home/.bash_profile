
# add key to remote server
function authme {
  ssh $1 'cat >>.ssh/authorized_keys' <~/.ssh/id_rsa.pub
}

# git
source ~/.git-completion.sh

if [ -r $HOME/.custom_variables ];
then
  source $HOME/.custom_variables
fi                                

if [ -r $HOME/.custom_aliases ];
then
  source $HOME/.custom_aliases
fi                                

function parse_git_branch {
  branch_prompt=$(__git_ps1)
  if [ -n "$branch_prompt" ]; then
    status_icon=$(git_status)
    echo "$branch_prompt$status_icon "
  fi
}

# Show character if changes are pending
function git_status() {
  if current_git_status=$(git status | grep 'added to commit' 2> /dev/null); then
    echo ' +'
  fi
}

# For running specific features.
function rff {
 rake features FEATURE=features/"$1".feature
}

# For running specific line numbers
function rffl {
 cucumber features/"$1".feature:"$2"
}


# OSX specific
if [[ `uname` == 'Darwin' && -f $HOME/.osx_profile ]]; then
  source "$HOME/.osx_profile"
fi

if [[ -f $HOME/.private_vars ]]; then
  source "$HOME/.private_vars"
fi

export PATH="./bin:/usr/local/bin:/usr/local/sbin:$PATH"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

