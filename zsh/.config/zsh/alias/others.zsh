alias gpg="gpg --homedir $GNUPGHOME"
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias pn=pnpm
alias laws='aws --endpoint-url=http://localhost:4566'
alias youtube-dl="yt-dlp -o $VIDEOS/(title)s.%(ext)s"

# better unix
alias vcurl=xh
alias cat='bat -p --theme=Nord'
alias l='exa --oneline --icons'
alias bat='bat -p'

alias laws='aws --endpoint-url http://127.0.0.1:4566/000000000000'
alias ssay="gosling - - -v en-US-Studio-O | mpv --no-terminal -"
alias tgpt="tgpt --provider openai --key $OPENAI_KEY"

function say() {
    echo "$1" | ssay
}

function vgpt() {
    tgpt -q -w "$1" | ssay &
}
