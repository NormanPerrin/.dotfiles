_fzf_complete_listen() {
  playlist=$(fd . "$MPV_PLAYLISTS_DIR" -d 1 -x basename; echo 'all')
  
  _fzf_complete --reverse --layout=reverse-list --border --prompt='Music type: ' -- "$@" < <(
    sort -u <<< "$playlist"
  )
}

_fzf_complete_wpp() {
  bg_options="$(fd . "$BACKGROUNDS" -x basename)"

  _fzf_complete --reverse --layout=reverse-list --border --prompt='Wallpaper: ' -- "$@" < <(
    sort -u <<< "$bg_options"
  )
}

_fzf_complete_just() {
  available_commands="$(just -l | sed -E 's/^( |	)+//g' |  rg -v alias | tail -n +2)"

  _fzf_complete --reverse --layout=reverse-list --border --prompt='Command: ' -- "$@" < <(
    sort -u <<< "$available_commands"
  )
}
