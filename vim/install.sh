#! /usr/bin/env sh

# Pre-requisites
mkdir -p $HOME/.vim/scripts

# Install plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "$(pwd)/vim/vimrc" $HOME/.vimrc
ln -s "$(pwd)/vim/plugins.vim" $HOME/.vim/scripts/plugins.vim
ln -s "$(pwd)/vim/mappings.vim" $HOME/.vim/scripts/mappings.vim

ln -s "$(pwd)/vim/ftplugin" $HOME/.vim/ftplugin

vim +PlugInstall +qall -u $HOME/.vim/scripts/plugins.vim
vim +VimProcInstall +qall -u $HOME/.vim/scripts/plugins.vim

