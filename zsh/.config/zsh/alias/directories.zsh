# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -pv'
alias rd=rmdir

# List directory contents
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Shortcuts
alias cdb="cd $BIN"

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
