# Homebrew setup
if [[ -f "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"

export NODE_OPTIONS="--max-old-space-size=8192"

# Download Zinit if it's not already installed
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add ZSH plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light z-shell/zsh-eza

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Install oh-my-posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/dotfiles/ohmyposh/.config/ohmyposh/zen.toml)"
fi

# Keybindings
bindkey -v
bindkey '^u' history-search-backward
bindkey '^f' history-search-forward
bindkey '^p' autosuggest-accept

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias python=/usr/bin/python3

# File System
if command -v eza &> /dev/null; then
  alias ls='eza -lh --group-directories-first --icons=auto'
  alias lsa='ls -a'
  alias lt='eza --tree --level=2 --long --icons --git'
  alias lta='lt -a'
fi

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias gpod="echo '... Pulling from develop branch...' && git pull origin develop"
alias gitup="echo '... FETCHING && PULLING ...' && git fetch && git pull"
alias cc="~/AutoPay/scripts/create_commit.sh"
alias cb="~/AutoPay/scripts/create_branch.sh"
alias cr="~/AutoPay/scripts/create_release.sh"
alias gcm="git commit -m"

# Tmux
alias tks="tmux kill-server"
alias t="tmux attach || tmux new -s LOSUI"
alias tls="tmux ls"

# Dev
alias v='nvim'
alias testall="echo 'Linting and running all tests' && yarn lint --fix && yarn test"
alias fo='vim "$(fzf)"'
alias ff='cd "$(fd . -t d | fzf)"'

# Agent
alias c='claude'
alias cx='claude --dangerously-skip-permissions'
alias claude-update='claude update'

# Yazi setup
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Source secrets
[[ -f ~/.secrets ]] && source ~/.secrets

# Setting UTF-8 terminal support
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"

# Lazy-load nvm: defer sourcing until first use of nvm/node/npm/npx.
# Only install the wrappers if nvm is actually present; otherwise leave
# node/npm/npx to resolve via PATH (e.g. Homebrew) instead of stranding
# them in undefined wrapper functions that recurse on themselves.
if [ -s "$NVM_DIR/nvm.sh" ]; then
  _load_nvm() {
    unset -f nvm node npm npx _load_nvm
    \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  }
  nvm()  { _load_nvm; command nvm "$@"; }
  node() { _load_nvm; command node "$@"; }
  npm()  { _load_nvm; command npm "$@"; }
  npx()  { _load_nvm; command npx "$@"; }
fi

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
