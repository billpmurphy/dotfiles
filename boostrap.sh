#!/bin/bash

# get vundle and install
if [ ! -d "~/.vim/bundle" ]; then
    mkdir -p ~/.vim/bundle
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mv ~/dotfiles/.vimrc ~/.vimrc
vim +BundleInstall +qall

rm -rf ~/dotfiles
