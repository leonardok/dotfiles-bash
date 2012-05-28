# ~/.bashrc - Leonardo Korndorfer

PS1='\[\e[1;34m\][\[\e[1;32m\]\u@\h \[\e[1;31m\]\w \[\e[1;34m\]]\$\[\e[0m\] '

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
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


