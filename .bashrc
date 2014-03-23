# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
HISTSIZE=4000
HISTFILESIZE=4000

shopt -s histappend
shopt -s checkwinsize


# load aliases, if any
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
