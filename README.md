# dotfiles

Some nerd's configuration files.

## Usage

1. Clone this repository to `~/.dotfiles` (or wherever),
then navigate to it in a command prompt.
**Be warned**, if you clone this repo to a directory that *is not
your home directory*, make sure to use the `-d` and `-t` arguments
of Stow. By default, it just looks at current directory and targets
the parent directory.

2. Run `git submodule init`, then `git submodule update`.

3. Install GNU Stow and run it against the folders which
have configs you want on your computer.

```
git clone git@github.com:joshtrahan/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

git submodule init
git submodule update

stow bash
stow tmux
```

## `container_setup.sh`

When using remote container development for Visual Studio Code,
this script should be run when the container is spun up.

https://code.visualstudio.com/docs/remote/containers#_personalizing-with-dotfile-repositories
