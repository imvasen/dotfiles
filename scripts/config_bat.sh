#!/usr/bin/env bash

set -exo pipefail

# Check XDG exists
if [ -z "$XDG_CONFIG_HOME" ]; then
  echo "XDG_CONFIG_HOME is not set. Please set it to your config directory."
  exit 1
fi

echo "Installing bat config"

# For debian/ubuntu, bat is installed as batcat
cp -R bat $XDG_CONFIG_HOME/bat
bat cache --build
