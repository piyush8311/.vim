#!/bin/bash
rm -rf ~/.vim
rm ~/.vimrc
mkdir ~/.vim
cp .vimrc ~/.vim/
cp -R ./autoload ~/.vim/
ln -s ~/.vim/.vimrc .vimrc
vim -c PlugInstall
cd ~/.vim/plugged/YouCompleteMe # for ycm compilation
./install.py --clangd-completer
