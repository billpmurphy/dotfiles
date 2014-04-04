dotfiles
========

My personal config files for bash, vim, X11, git, and more for Debian-based systems. I like to use a very lightweight setup, usually a Debian-based distro with X11 and dwm (with urxvt as my terminal emulator of choice) rather than a full-fledged desktop environment, and these dotfiles reflect that--everything is geared toward Debian and using urxvt with dwm. However, everything besides the X11 config files should be compatible with most Linux distros and OSX.

### Installation ###

To install, just clone the repo and run the `bootstrap.sh` script. This will install everything except the config files for dwm, mdp, and ncmpcpp, which should be trivial for you to install yourself if you use those applications. For the lazy:

```
git clone http://github.com/billpmurphy/dotfiles.git ~/dotfiles
. ~/dotfiles/bootstrap.sh
```


### Extras ###

Inside the `misc` folder you will find a simple bash script that I run on new Debian 7 Vagrant boxes to install all of my dotfiles and preferred X11 + dwm setup.
