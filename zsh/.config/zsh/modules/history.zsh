export HISTFILE="$XDG_CACHE_HOME/bash_history"
export HISTSIZE=50000
export SAVEHIST=$HISTSIZE

setopt append_history         # append history to the history file
setopt share_history          # share command history data between all sessions
setopt hist_verify            # show command with history expansion to user before running it
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_ignore_all_dups   # ignore duplicated commands history list
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_save_no_dups      # do not save duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_find_no_dups      # do not display duplicated commands history list
