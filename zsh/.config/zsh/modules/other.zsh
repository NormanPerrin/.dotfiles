code-to-image() {
  if [ -z "$1" ]; then
    echo 'No input file :('
    return 1
  fi

  out="$(echo "$1" |sed 's/\..*$/.png/')"
  intermediate="intermediate.$out"

  silicon "$1" \
    --output "$intermediate" \
    --pad-vert 0 --pad-horiz 0 \
    --font 'JetBrainsMonoMedium Nerd Font Mono' \
    --background '#000000'

  convert "$intermediate" -resize 75x75% "$out"

  rm "$intermediate"

  echo "$out"
}
