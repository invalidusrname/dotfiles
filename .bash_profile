# make terminal pretty
export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad  # cyan directories
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\] '
PS2="> "

# common ENV
export MACPORTS=/opt/local/bin:/opt/local/sbin
export PATH="$MACPORTS/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export SVN_EDITOR='mate -w'
export EDITOR='mate -w'
export LC_CTYPE=en_US.UTF-8

# common aliases
alias vi='vim'
alias c='clear'
alias l="ls -CaGpltr"
alias ls="ls -Gl"
alias dp="cd ~/Desktop"
alias lusers="netstat -na | grep 548"
alias myip='curl http://remoteip.f-trans.net'

# BitchX
export IRCUSER='invalidusrname'
export IRCNAME="invalidusrname"
export IRCSERVER="irc.freenode.net"

## DEVELOPMENT

# git
source ~/.git-completion.sh
alias gl='git pull'
alias glog='git log --stat -u --color'
alias gp='git push'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff | mate'
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

# mysql
alias mysql='mysql5'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'

# textmate
alias e='mate'
alias ubundles="AA=$(pwd); cd /Library/Application\ Support/TextMate; svn up; cd $AA;"

# ruby
export RI="--format ansi -T --width 70"
alias r='ruby'

# rails
alias sc='./script/console'
alias ss='./script/server'
alias restart_rails='touch tmp/restart.txt'
alias rt='rake test'

# perforce
alias p4d='p4 diff -duw'
alias p4dm="p4d | mate"
alias p4s="p4 sync"

# work
source "$HOME/.skyblue_profile"

