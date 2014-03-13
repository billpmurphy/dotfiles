#!/bin/bash

# put dotfiles into home directory
mv ~/dotfiles/.Xresources ~/.Xresources
mv ~/dotfiles/.vimrc ~/.vimrc
mv ~/dotfiles/.gitignore ~/.gitignore
mv ~/dotfiles/.gitconfig ~/.gitconfig

# get vundle and install
if [ ! -d "~/.vim/bundle" ]; then
    mkdir -p ~/.vim/bundle
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# clean up
#rm -rf ~/dotfiles
