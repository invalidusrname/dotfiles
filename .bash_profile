# make terminal pretty
PS1="\h:\w \u$ "
PS2="> "
export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad  # cyan directories
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

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

# work
source "$HOME/.skyblue_profile"
