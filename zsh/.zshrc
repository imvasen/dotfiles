## Start ZSH initial config

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="vasen"

# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy/mm/dd"

# This should be set before venv plugin inits
VIRTUALENVWRAPPER_PYTHON=$HOMEBREW_PREFIX/bin/python3

# Plugins
# Standard plugins can be found in $ZSH/plugins/

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(macos git virtualenv virtualenvwrapper docker docker-compose pass)

source $ZSH/oh-my-zsh.sh

## Ends ZSH config

## Starts User configuration

export EDITOR=vim
export GPG_TTY=$(tty)

myip() { dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}' }
h() { curl cheat.sh/$1 }

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# pnpm
export PNPM_HOME="/Users/ivasen/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ivasen/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ivasen/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ivasen/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ivasen/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
