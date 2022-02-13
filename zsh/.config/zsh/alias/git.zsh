function gpull() {
  if [[ -z $1 ]]; then
    local branch=$(git rev-parse --abbrev-ref HEAD)
    git pull origin $branch
  else
    git pull origin $1
  fi
}

function gp() {
  if [[ -z $1 ]]; then
    local branch=$(git rev-parse --abbrev-ref HEAD)
    git push origin $branch
  else
    git push origin $1
  fi
}

function gpf() {
  if [[ -z $1 ]]; then
    local branch=$(git rev-parse --abbrev-ref HEAD)
    git push --force-with-lease origin $branch
  else
    git push --force-with-lease origin $1
  fi
}

function ga() {
  if [[ -z $@ ]]; then
    git add -A
  else
    git add "$@"
  fi

  clear
  git status
}

alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gch='git checkout'
alias gclean='git clean -fd'
alias gd='git diff'
alias gl='git log'
alias gr='git restore'
alias gst='git status'
