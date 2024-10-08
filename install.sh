#!/usr/bin/env bash

set -euxo pipefail

echo "Running installation"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh

# Zsh
cp ~/.zshrc ~/.zshrc.bkp
cp zsh/.zshrc ~
cp zsh/.zprofile ~
cp zsh/vasen.zsh-theme ~/.oh-my-zsh/themes

# Git Config
cp ~/.gitconfig ~/.gitconfig.bkp
cp git/.gitconfig ~

# Installing bin
mkdir -p ~/.bin
cp bin/* ~/.bin
chmod +x ~/.bin/*

# tmux
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~
cp tmux/.tmux.conf.local ~
