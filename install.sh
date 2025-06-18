#!/usr/bin/env bash

set -exo pipefail

echo "Running installation"

source ./zsh/.zshenv

echo "Creating XDG directories"
mkdir -p $XDG_DATA_HOME
mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_CACHE_HOME
mkdir -p $XDG_STATE_HOME

# TODO: Only on mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle

# Installing bin
mkdir -p ~/.local/bin
cp bin/* ~/.local/bin
chmod +x ~/.local/bin/*

# My terminal
cp wezterm $XDG_CONFIG_HOME

# Zsh
[[ ! -f ~/.zshrc ]] || cp ~/.zshrc ~/.zshrc.bkp
[[ ! -f ~/.zshenv ]] || cp ~/.zshenv ~/.zshenv.bkp
[[ ! -f ~/.zprofile ]] || cp ~/.zprofile ~/.zprofile.bkp

cp zsh/.zshrc ~
cp zsh/.zprofile ~
cp zsh/.zshenv ~
cp zsh/.p10k.zsh ~

# neovim
bash scripts/config_nvim.sh

# Git
bash scripts/config_git.sh

# tmux
bash scripts/config_tmux.sh

# themes
bash scripts/config_bat.sh
cp -r eza $XDG_CONFIG_HOME
ln -sf $XDG_CONFIG_HOME/eza/tokyonight.yml $XDG_CONFIG_HOME/eza/theme.yml
cp -r yazi $XDG_CONFIG_HOME

# Karabiner
mkdir -p $XDG_CONFIG_HOME/karabiner
cp karabiner/karabiner.json $XDG_CONFIG_HOME/karabiner
