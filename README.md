# dotfiles

Some nerd's configuration files.

## Usage

Navigate to this directory in a command prompt.
Run `git submodules init`, then `git submodules update`.

Install GNU Stow and run it against the folders which
have configs you want on your computer.

```
stow bash
stow tmux
```

## `container_setup.sh`

When using remote container development for Visual Studio Code,
this script should be run when the container is spun up.

https://code.visualstudio.com/docs/remote/containers#_personalizing-with-dotfile-repositories
