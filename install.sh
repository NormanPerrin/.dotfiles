#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask-fonts hashicorp/tap

brew install --cask rectangle 1password 1password-cli discord slack whatsapp obs postman font-jetbrains-mono-nerd-font robo-3t wkhtmltopdf

brew install nvim nvim deno rust yarn awscli docker docker-compose tmux stow gpg pandoc imagemagick unoconv ffmpeg jq yq mysql rg fd fzf bat tree youtube-dl shellcheck aspell mpv nq redis hashicorp/tap/terraform neofetch neomutt isync pass lynx urlview notmuch abook qrencode msmtp luarocks hashicorp/tap/terraform-ls ninja

npm i -g \
  wscat \
  typescript \
  sql-language-server \
  bash-language-server \
  dockerfile-language-server-nodejs \
  vscode-langservers-extracted \
  @cucumber/language-server \
  yaml-language-server

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

fd -t d -x stow

nvim --headless +PlugInstall +qa

# Maybe an error here
git clone https://github.com/alacritty/alacritty \
    && make -C alacritty app \
    && cp -r alacritty/target/release/osx/Alacritty.app /Applications/ \
    && rm -fr alacritty

git clone git://git.codemadness.org/sfeed \
    && make -C sfeed \
    && sudo make -C sfeed install

curl -s https://kristaps.bsd.lv/lowdown/snapshots/lowdown.tar.gz > lowdown.tar.gz \
    && tar -zxvf lowdown.tar.gz \
    && rm lowdown.tar.gz \
    && pushd lowdown*
    && ./configure \
    && make \
    && make install
    && make regress \
    && sudo make install
    && popd \
    && rm -fr lowdown*

# Fonts
mkdir -p $XDG_DATA_HOME/fonts
  && git clone git@github.com/xero/figlet-fonts.git $XDG_DATA_HOME/fonts/figlet-fonts
