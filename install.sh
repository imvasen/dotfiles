#!/usr/bin/env bash

set -euxo pipefail

echo "Running installation"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ~/.zshrc ~/.zshrc.bkp
cp zsh/.zshrc ~
cp zsh/.zprofile ~
cp zsh/vasen.zsh-theme ~/.oh-my-zsh/themes

cp ~/.gitconfig ~/.gitconfig.bkp
cp git/.gitconfig ~
