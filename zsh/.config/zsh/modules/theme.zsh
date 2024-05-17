# Solves "Inappropriate ioctl for device gpg" error... copied and pasted from SO, don't ask me why
export GPG_TTY=$TTY
export TERM=screen-256color

alias ls='ls --color=auto'

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

source "$BREW_HOME/share/powerlevel10k/powerlevel10k.zsh-theme"
