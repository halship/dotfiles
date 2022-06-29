#!/bin/bash

# dotfiles
dotfiles=(.bashrc .bash_profile .xprofile)
for file in ${dotfiles[@]}
do
    if [ ! -e ~/$file ]; then
        echo "Install ${file}"
        ln -s ~/dotfiles/$file ~/$file
    fi
done
