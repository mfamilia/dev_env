#! /usr/bin/env bash

ln -s $(pwd)/tmux/tmux.conf $HOME/.tmux.conf

mkdir $HOME/.tmux

mkdir $HOME/.vim

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
