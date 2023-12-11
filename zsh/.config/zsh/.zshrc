# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export EDITOR='nvim -i NONE'
export CODE="$HOME/.local/code"
export WORK="$HOME/.local/work"

export MPV_PLAYLISTS_DIR="$XDG_DATA_HOME/mpv/playlists"

export BIN="$HOME/.local/bin"
export TWITTER_BIN="$HOME/.local/twitter-bin"
export MEDIA_BIN="$HOME/.local/media-bin"
export CODE_BIN="$HOME/.local/code-bin"

export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export LSP_SERVERS="$XDG_DATA_HOME/nvim/mason/bin"

local LOCAL_BIN='/opt/local/bin'
local LOCAL_SBIN='/opt/local/bin'
local BREW_HOME="$(brew config |rg HOMEBREW_PREFIX |cut -d' ' -f2)"
local BREW_BIN="$BREW_HOME/bin"
local FZF_BIN="$BREW_HOME/opt/fzf/bin"

export PATH="$BIN:$TWITTER_BIN:$MEDIA_BIN:$CODE_BIN:$LOCAL_BIN:$LOCAL_SBIN:$BREW_BIN:$FZF_BIN:$CARGO_HOME:$GOPATH/bin:$LSP_SERVERS:$PATH"

# Export other
export TEMPLATES="$HOME/.local/templates"
export MUSIC="$HOME/Music/"
export VIDEOS="$HOME/Movies"

# Locale
export LANG="en_US.UTF-8"

# Color on for pager
export PAGER=most

# Ignore duplicates in history
export HISTCONTROL='ignoreboth'

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
export HISTFILE="$XDG_CACHE_HOME/bash_history"
export SHELL_SESSION_HISTORY=0
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"
export NODE_REPL_HISTORY="$XDG_CACHE_HOME/node_repl_history"

# Solves "Inappropriate ioctl for device gpg" error... copied and pasted from SO, don't ask me why
export GPG_TTY=$TTY

export TERM=screen-256color

# Activate auto complete
autoload -U compinit; compinit
# complete -o nospace -C /usr/local/bin/terraform terraform

# Modules
source "$XDG_CONFIG_HOME/zsh/modules/history-substring-search.zsh"
source "$XDG_CONFIG_HOME/zsh/modules/history.zsh"
source "$XDG_CONFIG_HOME/zsh/modules/mac-utils.zsh"
source "$XDG_CONFIG_HOME/zsh/modules/other.zsh"
source "$XDG_CONFIG_HOME/zsh/modules/server.zsh"
source "$XDG_CONFIG_HOME/zsh/modules/bindings.zsh"
# Theme
source "$BREW_HOME/share/powerlevel10k/powerlevel10k.zsh-theme"
# Alias
source "$XDG_CONFIG_HOME/zsh/alias/directories.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/others.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/git.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/vi.zsh"

source "$HOME/.config/private.zsh" 2>/dev/null

# OrbStack: command-line tools and integration
source "$HOME/.orbstack/shell/init.zsh" 2>/dev/null || :

# fzf auto-completion setup
source "$BREW_HOME/opt/fzf/shell/completion.zsh" 2> /dev/null
source "$BREW_HOME/opt/fzf/shell/key-bindings.zsh"

# setup direnv
eval "$(direnv hook zsh)"
