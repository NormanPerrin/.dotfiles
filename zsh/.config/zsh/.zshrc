# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export SFEED_PLUMBER='sfeed_open'
export SFEED_YANKER='sfeed_copy'
export SFEED_URL_FILE="$HOME/.sfeed/sfeedrc"

export MPV_PLAYLISTS_DIR="$XDG_DATA_HOME/mpv/playlists"

export BIN="$HOME/.local/bin"
export CODE="$HOME/.local/code"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export LSP_SERVERS="$XDG_DATA_HOME/nvim/mason/bin"

export PATH="/opt/homebrew/bin:$BIN:$CARGO_HOME:$GOPATH/bin:$LSP_SERVERS:$PATH"

# Export other
export TEMPLATES="$HOME/.local/templates"
export MUSIC="$HOME/Music/own"
export VIDEOS="$HOME/Movies"

# Locale
export LANG="en_US.UTF-8"

# Color on less
export LESS='-R'
export LESSOPEN='|pygmentize -g %s'

# Habits
export HABITS_STORE="$CODE/sites/nperrin.io/habits/habits.json"

# Ignore duplicates in history
export HISTCONTROL='ignoreboth'

# Highlight man pages with bat
export MANPAGER="sh -c 'col -bx |bat -l man -p'"
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
export GPG_TTY=$(tty)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Functions
cdc () {
	cd $CODE
	response="$(fd -t d -E '*node_modules*' -d 1 . |fzf --preview='tree -L 2 -I 'node_modules' {}' --bind='space:toggle-preview')"
	[ -z "$response" ] && cd -
	[ ! -z "$response" ] && cd "$CODE/$response"
}
cdv () {
	cd "$HOME/Documents"
	response="$(fd -t d -E '*node_modules*' . |fzf --preview='tree -L 2 -I 'node_modules' {}' --bind='space:toggle-preview')"
	[ -z "$response" ] && cd -
	[ ! -z "$response" ] && cd "$HOME/Documents/$response"
}
# Edition
vd () {
	cd "$HOME/Documents"
	response="$(fd -t f -E '*node_modules*' -E '*.ico' -E '*.docx' -E '*.pdf' -E '*.png' -E '*.gz' -E '*.jpg' -E '*.mkv' -E '*.jpeg' . |fzf --preview='bat {}' --bind='space:toggle-preview')"
	cd -
	[ ! -z "$response" ] && vi "$HOME/Documents/$response"
}
vc () {
	cd "$CODE"
	response="$(fd -t f -E '*node_modules*' -E '*.ico' -E '*.docx' -E '*.pdf' -E '*.png' -E '*.gz' -E '*.jpg' -E '*.mkv' -E '*.jpeg' . |fzf --preview='bat {}' --bind='space:toggle-preview')"
	cd -
	[ ! -z "$response" ] && vi "$$CODE/$response"
}

# Activate auto complete
autoload -U compinit; compinit
# complete -o nospace -C /usr/local/bin/terraform terraform

# Remove mode switching delay.
KEYTIMEOUT=5

# Functions
source "$XDG_CONFIG_HOME/zsh/functions/colors.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/completition.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/git.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/history-substring-search.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/history.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/server.zsh"
source "$XDG_CONFIG_HOME/zsh/functions/other.zsh"
# Themes
source "$XDG_CONFIG_HOME/zsh/themes/robbyrussell.zsh"
# Alias
source "$XDG_CONFIG_HOME/zsh/alias/directories.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/others.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/git.zsh"
source "$XDG_CONFIG_HOME/zsh/alias/vi.zsh"
# Bindings
source "$XDG_CONFIG_HOME/zsh/bindings.zsh"
