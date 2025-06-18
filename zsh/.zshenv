# XDG First
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Global tools
export EDITOR=nvim
export GPG_TTY=$TTY
export LC_ALL=en_US.UTF-8

export NVM_DIR="$XDG_CONFIG_HOME/.nvm"

# Specific programs
export EZA_CONFIG_DIR=$XDG_CONFIG_HOME/eza
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"
export AWS_SHARED_CREDENTIALS_FILE=$XDG_CONFIG_HOME/aws/credentials
export AWS_CONFIG_FILE=$XDG_CONFIG_HOME/aws/config

export SB_API_TOKEN=""
export SB_APP_TOKEN=""
export SB_ACCOUNT=""

export TN_API_TOKEN=""
export TN_IDENTITY=""

export PYTHONPATH="$PYTHON_PATH:/Users/vasen/Developer/reps"
export REPS_ENV=dev
export REPS_CONFIG_FILE=$HOME/Developer/reps/reps.yaml
