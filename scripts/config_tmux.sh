#!/usr/bin/env bash

set -exo pipefail

# Check XDG exists
if [ -z "$XDG_CONFIG_HOME" ]; then
  echo "XDG_CONFIG_HOME is not set. Please set it to your config directory."
  exit 1
fi

echo "Installing tmux config"

cp -R tmux $XDG_CONFIG_HOME/tmux

mkdir -p $XDG_CONFIG_HOME/tmux/plugins
git clone https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm
cp tmux/tmux-nerd-font-window-name.yml $XDG_CONFIG_HOME/tmux
