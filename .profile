# if we are using bash
if [ -n "$BASH_VERSION" ]; then
    # if there is a .bashrc, include it
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH to include user's private bin, if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# if we are using a gui, startx automatically
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    . startx
    logout
fi
