call plug#begin('$XDG_CONFIG_HOME/nvim/bundle')
Plug 'pangloss/vim-javascript' " JS syntax
Plug 'leafgarland/typescript-vim' " TS syntax
Plug 'lervag/vimtex' " LaTeX goodies
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Linter, suggestions
Plug 'preservim/nerdcommenter' " Comments
Plug 'preservim/nerdtree' " Directory-manager
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " Fuzzy finder
Plug 'flazz/vim-colorschemes' " Colors
Plug 'vim-airline/vim-airline' " Status bar
Plug 'junegunn/limelight.vim' " Hightlight cursorline toggle
Plug 'junegunn/goyo.vim' " Center content toggle
Plug 'ryanoasis/vim-devicons' " Dev Icons
Plug 'voldikss/vim-floaterm' " Floating shell
call plug#end()


source $XDG_CONFIG_HOME/nvim/plugins/coc.vim
source $XDG_CONFIG_HOME/nvim/plugins/floaterm.vim
source $XDG_CONFIG_HOME/nvim/plugins/fzf.vim
source $XDG_CONFIG_HOME/nvim/plugins/javascript.vim
source $XDG_CONFIG_HOME/nvim/plugins/limelight.vim
source $XDG_CONFIG_HOME/nvim/plugins/nerdcommenter.vim
