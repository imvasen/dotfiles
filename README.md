# Hector's dotfiles

Dotfiles are how you personalize your dev setup. These are mine. Feel free to
use them if they work for you.

This repo includes an installer for both MacOS and Linux. My preferred Shell is
ZSH, so that's what you're getting with this repo.

## Git

`git/*` includes some aliases and preferred configurations. For this config to
work properly `git-delta` & `vim` are required.

## Bin

Some utilities are contained in bin:

- `codeshell` - I use tmux in vscode as default shell.
  This command creates a tmux session hashing the PWD (`SESSION=vscode/<hash>`).
- `color-test` - Tests the 256 colors in your terminal, as long as it's supported.
- `dps` - My preferred way to show docker processes.
- `h` - Show help for any command (e.g. `h git`).
- `hot` - Flip a coin.
- `myip` - Shows your public IP
- `tma` - Creates a tmux session (e.g. `tma session-name`).
- `nv` - NeoVim

## tmux

I use tmux a lot. It comes handy when doing any kind of terminal stuff. My
preferred flavor is the one [Grégory Pakosz][gregory] adds. I found his
[tmux repo][gregory-tmux] superb.

> In order for tmux to work with treemux extension, you need to install
> `pynvim` in your python environment. For MacOS with brew, you can use:
> `pip --break-system-packages install pynvim`.

## Thanks

This repository was inspired by all those open source dotfiles around.

Special mentions to:

- [Grégory Pakosz][gregory].
- [Adam Hawkins][adam-dotfiles]

[adam-dotfiles]: https://github.com/ahawkins/dotfiles
[gregory]: https://github.com/gpakosz
[gregory-tmux]: https://github.com/gpakosz/.tmux
