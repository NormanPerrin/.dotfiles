#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask-fonts

brew install --cask spectacle firefox 1password 1password-cli discord slack whatsapp obs postman font-jetbrains-mono-nerd-font

brew install nvim nvim deno rust yarn awscli docker tmux stow gpg pandoc imagemagick unoconv ffmpeg jq mysql rg fd fzf bat tree youtube-dl shellcheck aspell mpv nq

yarn global add n typescript esbuild

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
    && make \
    && make install
