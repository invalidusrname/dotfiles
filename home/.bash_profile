# make terminal pretty
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad  # cyan directories
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]'
PS2="> "

# common aliases
alias vi='vim'
alias c='clear'
alias l="ls -CaGpltr"
alias ls="ls -Gl"
alias lusers="netstat -na | grep 548"
alias myip='curl http://remoteip.f-trans.net'

# BitchX
export IRCUSER='invalidusrname'
export IRCNAME="invalidusrname"
export IRCSERVER="irc.freenode.net"

## DEVELOPMENT


# tmux
alias t='tmux -u -2'


export SVN_EDITOR='vim'
export EDITOR='vim'

# add key to remote server
function authme {
  ssh $1 'cat >>.ssh/authorized_keys' <~/.ssh/id_dsa.pub
}

# git
source ~/.git-completion.sh
alias gl='git pull'
alias glog='git log --stat -u --color'
alias gp='git push'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff --color'
alias gst='git status'
alias g4r='git-p4 rebase'
alias g4s='git-p4 submit'

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

PS1="$PS1\$(parse_git_branch)\$ "


# ruby
export RI="--format ansi -T --width 70"
alias r='ruby'

# rails
alias sc='./script/console'
alias ss='./script/server'
alias restart_rails='touch tmp/restart.txt'
alias rt='rake test'
alias tl="tail -f log/development.log"

# bundler
alias b="bundle"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# cucumber
alias rf='rake features'

# For running specific features.
function rff {
 rake features FEATURE=features/"$1".feature
}

# For running specific line numbers
function rffl {
 cucumber features/"$1".feature:"$2"
}

# perforce
alias p4d='p4 diff -duw'
alias p4dm="p4d | $EDITOR"
alias p4s="p4 sync"

# OSX specific
if [[ `uname` == 'Darwin' && -f $HOME/.osx_profile ]]; then
  source "$HOME/.osx_profile"
fi

# JS
export PATH="$HOME/narwhal/bin:$PATH"
export NARWHAL_ENGINE=jsc

export PATH="./bin:$PATH"

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
