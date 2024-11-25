#!/usr/bin/env bash

set -euxo pipefail

echo "Running installation"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle

mkdir -p ~/.config

# Zsh
[[ ! -f ~/.zshrc ]] || cp ~/.zshrc ~/.zshrc.bkp
[[ ! -f ~/.zshenv ]] || cp ~/.zshenv ~/.zshenv.bkp
[[ ! -f ~/.zprofile ]] || cp ~/.zprofile ~/.zprofile.bkp

cp zsh/.zshrc ~
cp zsh/.zprofile ~
cp zsh/.zshenv ~
cp zsh/.p10k.zsh ~

# neovim
cp -r nvim ~/.config

# Git Config
cp ~/.gitconfig ~/.gitconfig.bkp
cp git/.gitconfig ~

# Installing bin
mkdir -p ~/.bin
cp bin/* ~/.bin
chmod +x ~/.bin/*

# tmux
cp tmux/.tmux.conf ~
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
