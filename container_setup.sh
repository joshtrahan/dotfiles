#!/bin/sh

if ! [ -x "$(command -v stow)" ]; then
    echo "GNU Stow not found. Aborting."
    exit 1
fi

dotfiles_dir=$(dirname $(readlink -f $0))
target_dir=${HOME}

pushd $dotfiles_dir
git submodule init
git submodule sync
popd

if [ -e ${HOME}/.bashrc ]; then
    mv ${HOME}/.bashrc ${HOME}/.bashrc.existing
fi

stow -d $dotfiles_dir -t $target_dir bash
stow -d $dotfiles_dir -t $target_dir tmux
