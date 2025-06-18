#!/usr/bin/env bash

set -euxo pipefail

# Check XDG exists
if [ -z "$XDG_CONFIG_HOME" ]; then
  echo "XDG_CONFIG_HOME is not set. Please set it to your config directory."
  exit 1
fi

echo "Installing git config"

cp -R git $XDG_CONFIG_HOME
cp -R lazygit $XDG_CONFIG_HOME
