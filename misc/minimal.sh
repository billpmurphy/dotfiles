sudo apt-get update && sudo apt-get dist-upgrade

sudo apt-get install tree vim git p7zip-full unrar-free

git clone http://github.com/billpmurphy/dotfiles.git ~/dotfiles
cp ~/dotfiles/.bash_aliases ~/.bash_aliases
cp ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/.gitconfig ~/.gitconfig
cp ~/dotfiles/.gitignore ~/.gitignore
cp ~/dotfiles/.vimrc ~/.vimrc

# get vundle and install
if [ ! -d "~/.vim/bundle" ]; then
    mkdir -p ~/.vim/bundle
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall