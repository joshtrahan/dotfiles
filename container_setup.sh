#!/bin/sh


if ! [ -x "$(command -v stow)" ]; then
    echo "source ${HOME}/.dotfiles/bash/.bashrc" > ${HOME}/.bashrc
else
    dotfiles_dir=$(dirname $(readlink -f $0))
    target_dir=${HOME}

    if [ -e ${HOME}/.bashrc ]; then
        mv ${HOME}/.bashrc ${HOME}/.bashrc.container
    fi

    stow -d $dotfiles_dir -t $target_dir bash
    stow -d $dotfiles_dir -t $target_dir tmux
fi
