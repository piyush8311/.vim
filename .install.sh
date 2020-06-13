#!/bin/bash
rm -rf ~/.vim
rm ~/.vimrc
ls -s ~/.vim/.vimrc .vimrc
vim -c PlugInstall
cd ~/.vim/plugged/YouCompleteMe # for ycm compilation
./install.py --clangd-completer
