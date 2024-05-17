alias v="nvim -i NONE"
alias vi=v
alias vim=v

alias vn="v $XDG_CONFIG_HOME/nvim"
alias vz="v $XDG_CONFIG_HOME/zsh"

function vw() {
  v $(which "$1")
}
function vb() {
  v $BIN
}
