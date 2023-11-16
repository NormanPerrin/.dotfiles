#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask-fonts hashicorp/tap

brew install --cask rectangle 1password slack obs postman font-jetbrains-mono-nerd-font robo-3t wkhtmltopdf orbstack

brew install node nvim yarn awscli tmux stow gpg pandoc imagemagick unoconv ffmpeg jq mysql rg fd fzf bat tree youtube-dl shellcheck aspell mpv nq redis hashicorp/tap/terraform neofetch neomutt isync pass urlview notmuch abook qrencode msmtp luarocks hashicorp/tap/terraform-ls ninja renameutils adb most silicon powerlevel10k antibody yt-dlp noahgorstein/tap/jqp exa nixos direnv

gem install twurl

go install github.com/oklog/ulid/v2/cmd/ulid@latest

npm i -g \
  wscat \
  typescript \
  intelephense \
  @githubnext/github-copilot-cli

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

fd -t d -d 1 -x stow {.} -t ~

nvim --headless +PlugInstall +qa

# Maybe an error here
git clone https://github.com/alacritty/alacritty \
    && make -C alacritty app \
    && cp -r alacritty/target/release/osx/Alacritty.app /Applications/ \
    && rm -fr alacritty

git clone https://github.com/tmux-plugins/tmux-yank ~/.local/share/tmux-yank

# Fonts
mkdir -p "$XDG_DATA_HOME/fonts" \
  && git clone git@github.com/xero/figlet-fonts.git "$XDG_DATA_HOME/fonts/figlet-fonts"

# TODO
# lowdown
# pip3 install termdown
