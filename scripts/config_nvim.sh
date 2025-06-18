#!/usr/bin/env bash

set -euxo pipefail

# Check XDG exists
if [ -z "$XDG_CONFIG_HOME" ]; then
  echo "XDG_CONFIG_HOME is not set. Please set it to your config directory."
  exit 1
fi

echo "Installing nvim config"

cp -R nvim $XDG_CONFIG_HOME/nvim

# For the snacks dashboard
git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git /tmp/pokemon-colorscripts
chmod +x /tmp/pokemon-colorscripts/pokemon-colorscripts/pokemon-colorscripts
sudo /tmp/pokemon-colorscripts/pokemon-colorscripts/install.sh
