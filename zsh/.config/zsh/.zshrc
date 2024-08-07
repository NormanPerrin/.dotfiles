# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export EDITOR='nvim -i NONE'
export CODE="$HOME/.local/code"
export WORK="$HOME/.local/work"

export BIN="$HOME/.local/bin"
export TWITTER_BIN="$HOME/.local/twitter-bin"
export MEDIA_BIN="$HOME/.local/media-bin"
export CODE_BIN="$HOME/.local/code-bin"

export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export LSP_SERVERS="$XDG_DATA_HOME/nvim/mason/bin"

local BREW_HOME=/opt/homebrew
local BREW_BIN="$BREW_HOME/bin"
local FZF_BIN="$BREW_HOME/opt/fzf/bin"
local GOOGLE_BIN="$HOME/.local/google-cloud-sdk/bin"
local LOCAL_BIN='/opt/local/bin'

export PATH="$BIN:$TWITTER_BIN:$MEDIA_BIN:$CODE_BIN:$LOCAL_BIN:$BREW_BIN:$FZF_BIN:$CARGO_HOME:$GOPATH/bin:$LSP_SERVERS:$GOOGLE_BIN:$PATH"

# Export other
export TEMPLATES="$HOME/.local/templates"
export MUSIC="$HOME/Music/"
export VIDEOS="$HOME/Movies"
export BACKGROUNDS="$HOME/Documents/wallpapers"
export MPV_PLAYLISTS_DIR="$XDG_DATA_HOME/mpv/playlists"

# Locale
export LANG='en_US.UTF-8'

export PAGER='nvim -R'
export MANPAGER='nvim +Man!'

# Search for manuals here too
export MANPATH="$(manpath):/usr/local/man"

# Clean-up config
export __CF_USER_TEXT_ENCODING='0x0:0x56'
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export ASPELL_CONF="per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME/bash-completion/bash_completion"

# Clean-up cache
export SHELL_SESSION_HISTORY=0
export NODE_REPL_HISTORY="$XDG_CACHE_HOME/node_repl_history"

# Activate auto complete
autoload -U compinit; compinit


# OrbStack: command-line tools and integration
source "$HOME/.orbstack/shell/init.zsh" 2>/dev/null || :

# fzf auto-completion setup
source <(fzf --zsh)

# Custom
source "$XDG_CONFIG_HOME/zsh/private.zsh" 2>/dev/null
source "$XDG_CONFIG_HOME/zsh/modules/_.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/_.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/_.zsh"
source "$XDG_CONFIG_HOME/zsh/completions/_.zsh"
