#!/bin/sh

brew tap homebrew/cask-fonts

brew install --cask spectacle firefox 1password 1password-cli hey discord slack obs postman font-jetbrains-mono-nerd-font

brew install nvim nvim deno rust yarn awscli tmux stow gpg pandoc imagemagick unoconv ffmpeg jq mysql rg fd fzf bat tree youtube-dl shellcheck aspell mpv

yarn global add n typescript esbuild

nvim --headless +PlugInstall +qa
    && echo Neovim plugins installed!

git clone https://github.com/alacritty/alacritty
    && make -C alacritty app
    && cp -r alacritty/target/release/osx/Alacritty.app /Applications/
    && rm -fr alacritty
