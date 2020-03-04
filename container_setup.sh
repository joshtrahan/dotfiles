#!/bin/sh

if ! [ -x "$(command -v stow)" ]; then
    if [ -x "$(command -v apt-get)" ]; then
        apt-get update
        apt-get install -y stow
    elif [ -x "$(command -v apk)" ]; then
        apk add stow
    elif [ -x "$(command -v dnf)" ]; then
        dnf -y install stow
    else
        echo 'GNU Stow not found and cannot be installed. Aborting.'
        exit 1
else
    dotfiles_dir=$(dirname $(readlink -f $0))
    target_dir=${HOME}

    if [ -e ${HOME}/.bashrc ]; then
        mv ${HOME}/.bashrc ${HOME}/.bashrc.container
    fi

    stow -d $dotfiles_dir -t $target_dir bash
    stow -d $dotfiles_dir -t $target_dir tmux
fi
