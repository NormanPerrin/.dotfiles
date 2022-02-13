alias v='nvim -i NONE'
alias vn="v $XDG_CONFIG_HOME/nvim"
alias vz="v $XDG_CONFIG_HOME/zsh/.zshrc"
alias sz="source $XDG_CONFIG_HOME/zsh/.zshrc"

vd () {
	cd "$HOME/Documents"
	response="$(fd -t f -E '*node_modules*' -E '*.ico' -E '*.docx' -E '*.pdf' -E '*.png' -E '*.gz' -E '*.jpg' -E '*.mkv' -E '*.jpeg' . |fzf --preview='bat {}' --bind='space:toggle-preview')"
	cd -
	[ ! -z "$response" ] && v "$HOME/Documents/$response"
}

vc () {
	cd "$CODE"
	response="$(fd -t f -E '*node_modules*' -E '*.ico' -E '*.docx' -E '*.pdf' -E '*.png' -E '*.gz' -E '*.jpg' -E '*.mkv' -E '*.jpeg' . |fzf --preview='bat {}' --bind='space:toggle-preview')"
	cd -
	[ ! -z "$response" ] && v "$CODE/$response"
}
