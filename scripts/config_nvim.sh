#!/usr/bin/env bash

set -exo pipefail

# Check XDG exists
if [ -z "$XDG_CONFIG_HOME" ]; then
  echo "XDG_CONFIG_HOME is not set. Please set it to your config directory."
  exit 1
fi

echo "Installing nvim config"

if [ -d "$XDG_CONFIG_HOME/nvim" ]; then
  echo "nvim config directory already exists, removing..."
  sudo rm -rf "$XDG_CONFIG_HOME/nvim"
fi
git clone git@github.com:imvasen/dotfiles-nvim.git "$XDG_CONFIG_HOME/nvim"

# For the snacks dashboard
POKEMON_DIR="/tmp/pokemon-colorscripts"
if [ -d "$POKEMON_DIR" ]; then
  echo "Directory exists, removing..."
  rm -rf "$POKEMON_DIR"
fi
git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git "$POKEMON_DIR"

CUR_DIR=$(pwd)
cd $POKEMON_DIR
git pull
chmod +x /tmp/pokemon-colorscripts/install.sh
sudo ./install.sh
cd $CUR_DIR

# gh auth login
# gh ext instal meiji163/gh-notify
