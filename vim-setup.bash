#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
git submodule foreach git pull origin master

echo "
function f () {
    if [  !=  ] ; then
        cd  && ls
    else
        ls
    fi
}
" >> ~/.bashrc

