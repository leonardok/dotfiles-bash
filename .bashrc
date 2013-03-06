# ~/.bashrc - Leonardo Korndorfer

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(b:\1)/'
}

function parse_virtual_env {
	basename $VIRTUAL_ENV | sed -e 's/^.*/(env:\0)/'
}

PS1='\[\e[1;34m\][\[\e[1;32m\]\u@\h \[\e[1;31m\]\w \[\e[1;34m\]]$(parse_virtual_env)$(parse_git_branch)\$\[\e[0m\] \n'

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

export PATH="$PATH:~/bin/"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


