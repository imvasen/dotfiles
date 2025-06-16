#!/usr/bin/env bash

set -euxo pipefail

echo "Running installation"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle

mkdir -p ~/.config
mkdir -p ~/.installed-stuff

# My terminal
cp wezterm/.wezterm.lua ~

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
[[ ! -f ~/.gitconfig ]] || cp ~/.gitconfig ~/.gitconfig.bkp
cp git/.gitconfig ~

# themes
cp -r bat ~/.config
bat cache --build
cp -r lazygit ~/.config
cp -r eza ~/.config
ln -se ~/.config/eza/tokyonight.yml ~/.config/eza/theme.yml
cp -r yazi ~/.config

# Installing bin
mkdir -p ~/.bin
cp bin/* ~/.bin
chmod +x ~/.bin/*

# tmux
cp tmux/.tmux.conf ~
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mkdir -p ~/.config/tmux
cp tmux/tmux-nerd-font-window-name.yml ~/.config/tmux

# Karabiner
mkdir -p ~/.config/karabiner
cp karabiner/karabiner.json ~/.config/karabiner

git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git ~/.installed-stuff/pokemon-colorscripts
chmod +x ~/.installed-stuff/pokemon-colorscripts/pokemon-colorscripts/pokemon-colorscripts
sudo ./~/.installed-stuff/pokemon-colorscripts/pokemon-colorscripts/install.sh
