#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init

echo "
function f () {
    clear
    if [ \"\$1\"  != \"\" ] ; then
        cd \"\$@\" && ls
    else
        ls
    fi
}
" >> ~/.bashrc

