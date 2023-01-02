# Credits to https://codemadness.org/paste-service.html for the idea!

pastesrv() {
  if [ -z "$1" ]; then
    echo 'Error, not output name. Usage:'
    echo '  echo "Some text or file" > pastesrv "name"'
    return 1
  fi

  ssh me "cat > /var/www/paste.nperrin.io/$1"
  echo "https://paste.nperrin.io/$1" |tr -d '\n' |pbcopy
}

pastesrv_private() {
  pastesrv "$(random_hash)"
}

cleansrv() {
  ssh me 'rm -f /var/www/paste.nperrin.io/*'
}
