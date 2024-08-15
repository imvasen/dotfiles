eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$HOME/.bin:$PATH

# Aliases
alias pip=pip3
alias python=python3
alias tm=tmux
alias ping=gping
alias i386-brew=/usr/local/Homebrew/bin/brew
alias lg=lazygit
alias pi='pnpm install -C'
alias pf='pnpm --filter'
alias prun='pnpm -C'
alias piw='pnpm -w install'

export EDITOR=vim
export GPG_TTY=$(tty)
