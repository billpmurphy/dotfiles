#!/bin/bash

# put dotfiles into home directory
cp ~/dotfiles/.bash_aliases ~/.bash_aliases
cp ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/.dircolors ~/.dircolors
cp ~/dotfiles/.gitconfig ~/.gitconfig
cp ~/dotfiles/.gitignore ~/.gitignore
cp ~/dotfiles/.profile ~/.profile
cp ~/dotfiles/.vimrc ~/.vimrc
cp ~/dotfiles/.xinitrc ~/.xinitrc
cp ~/dotfiles/.Xresources ~/.Xresources

# get vundle and install
if [ ! -d "~/.vim/bundle" ]; then
    mkdir -p ~/.vim/bundle
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# clean up
#rm -rf ~/dotfiles
