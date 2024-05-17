
# osascript
alias mute="osascript -e 'set volume output muted TRUE'"
alias unmute="osascript -e 'set volume output muted FALSE'"
alias is-muted="osascript -e 'get volume settings' | sed -E 's/.*output muted:(.*)$/\\1/'"
