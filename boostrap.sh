#!/bin/bash

# put dotfiles into home directory
cp ~/dotfiles/.Xresources ~/.Xresources
cp ~/dotfiles/.vimrc ~/.vimrc
cp ~/dotfiles/.gitignore ~/.gitignore
cp ~/dotfiles/.gitconfig ~/.gitconfig
cp ~/dotfiles/.xinitrc ~/.xinitrc
cp ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/.profile ~/.profile

# get vundle and install
if [ ! -d "~/.vim/bundle" ]; then
    mkdir -p ~/.vim/bundle
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# clean up
#rm -rf ~/dotfiles
