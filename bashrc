# ~/.bashrc - Leonardo Korndorfer


PS1='\[\e[1;34m\][\[\e[1;32m\]\u@\h \[\e[1;31m\]\w \[\e[1;34m\]]$(__git_ps1)\$\[\e[0m\] \n'

# Set appropriate ls alias
case $(uname -s) in
	Darwin|FreeBSD)
		alias ls="ls -hFG"
		;;
	Linux)
		alias ls='ls --color=auto'
		alias l="ls --color=auto -l"
		;;
	NetBSD|OpenBSD)
		alias ls="ls -hF"
		;;
esac

export TERM="xterm-256color"
export LANG=en_US.UTF-8
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk

export PATH="$PATH:~/bin/"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


set -o vi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source /etc/bash_completion.d/git
