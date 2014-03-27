############################# general settings ###########################

#if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=400000

shopt -s histappend
shopt -s checkwinsize

############################ terminal prompt #############################

case "$TERM" in
    rxvt-unicode-256color) color_prompt=yes;;
    xterm-color) color_prompt=yes;;
esac

# prompt: "user@hostname: /path/to/dir$ "
if [ "$color_prompt" = yes ]; then
    PS1="\[\033[01;32m\]\u\[\033[0m\]@\[\033[01;32m\]\h"
    PS1="$PS1\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\$ "
else
    PS1="\u@\h: \w\$ "
fi

############################ useful functions ############################

# auto-extract compressed files
# usage: "extract whatever.gz"
function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)   echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# swap the names of two files
# usage: "swap example.txt example2.txt"
function swap()
{
    local TMPFILE=tmp.$$

    [ $# -ne 2 ] && echo "swap: 2 arguments needed" && return 1
    [ ! -e $1 ] && echo "swap: $1 does not exist" && return 1
    [ ! -e $2 ] && echo "swap: $2 does not exist" && return 1

    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

############################ other utilities #############################

# ls/tree colors
if [ -f /usr/bin/dircolors ]; then
    if [ -f ~/.dircolors ]; then
        eval "`dircolors -b ~/.dircolors`"
    fi
    export LS_OPTIONS='--color=auto'
fi

# if we are not in posix mode, try to enable tab completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# load aliases, if any
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

