# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if not there
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINITHOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Share history
setopt inc_append_history
setopt inc_append_history_time

# ZSH Plugins
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit

autoload -U select-word-style
select-word-style bash
bindkey -v
bindkey "\e[3~" delete-char

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias pip=pip3
alias py=python3
alias n=nvim
alias ping=gping
alias lg=lazygit
alias pi='pnpm install -C'
alias pf='pnpm --filter'
alias prun='pnpm -C'
alias piw='pnpm -w install'
alias ls='eza --icons=always'
alias l='eza -la --icons=always'
alias lt='eza -la --icons=always --tree'
alias g=git
alias z=cd
alias f=yazi
alias fzf-preview="fzf --preview='bat --style=numbers --color=always --line-range :500 {}'"
alias ff="fzf --preview='bat --style=numbers --color=always --line-range :500 {}'"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="$PATH:/opt/homebrew/opt/mysql-client@8.4/bin"

# Obstack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Virtualenvwrapper
source virtualenvwrapper.sh

HISTSIZE=5000
# Use XDG dirs for completion and history files
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/history
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
SAVEHIST=$HISTSIZE
HISTDUP=erase
HISTORY_IGNORE="ls:z:z -:z ..:cd:cd -:cd ..:cd ~:pwd:exit:clear:history"
setopt appendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza $realpath'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

eval "$(fzf --zsh)"

# Smart cd
eval "$(zoxide init --cmd cd zsh)"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

