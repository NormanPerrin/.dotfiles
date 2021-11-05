call plug#begin('$XDG_CONFIG_HOME/nvim/bundle')
Plug 'pangloss/vim-javascript'                    " JS syntax
Plug 'leafgarland/typescript-vim'                 " TS syntax
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Linter, suggestions
Plug 'preservim/nerdcommenter'                    " Comments
Plug 'preservim/nerdtree'                         " Directory-manager
Plug 'nvim-lua/popup.nvim'                        " Telescope dependency
Plug 'nvim-lua/plenary.nvim'                      " Telescope dependency
Plug 'nvim-telescope/telescope.nvim'              " Better fzf
Plug 'flazz/vim-colorschemes'                     " Colors
Plug 'vim-airline/vim-airline'                    " Status bar
Plug 'junegunn/limelight.vim'                     " Hightlight cursorline toggle
Plug 'junegunn/goyo.vim'                          " Center content toggle
Plug 'ryanoasis/vim-devicons'                     " Dev Icons
Plug 'voldikss/vim-floaterm'                      " Floating shell
Plug 'ThePrimeagen/vim-be-good'                   " Vim practice
Plug 'preservim/nerdtree'                         " Directory tree
Plug 'jbyuki/venn.nvim'                           " Diagrams
Plug 'AndrewRadev/switch.vim'                     " Toggle values
Plug 'AndrewRadev/splitjoin.vim'                  " Toggle inline and block code
Plug 'tpope/vim-fugitive'                         " Git for vim
Plug 'tpope/vim-speeddating'                      " Increment dates with <C-a>
call plug#end()

source $XDG_CONFIG_HOME/nvim/plugins/coc.vim
source $XDG_CONFIG_HOME/nvim/plugins/floaterm.vim
source $XDG_CONFIG_HOME/nvim/plugins/javascript.vim
source $XDG_CONFIG_HOME/nvim/plugins/limelight.vim
source $XDG_CONFIG_HOME/nvim/plugins/nerdcommenter.vim
source $XDG_CONFIG_HOME/nvim/plugins/nerdtree.vim
source $XDG_CONFIG_HOME/nvim/plugins/switch.vim
