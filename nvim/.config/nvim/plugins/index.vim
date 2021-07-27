call plug#begin('/Users/nperrin/.config/nvim/bundle')
Plug 'pangloss/vim-javascript' " JS syntax
Plug 'leafgarland/typescript-vim' " TS syntax
Plug 'maxmellon/vim-jsx-pretty' " JSX syntax
Plug 'jparise/vim-graphql' " GraphQL syntax
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
Plug 'jalvesaq/Nvim-R' " Replace RStudio
Plug 'ryanoasis/vim-devicons' " Dev Icons
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } "Web vim text edition
Plug 'voldikss/vim-floaterm' " Floating shell
call plug#end()


source /Users/nperrin/.config/nvim/plugins/coc.vim
source /Users/nperrin/.config/nvim/plugins/firenvim.vim
source /Users/nperrin/.config/nvim/plugins/floaterm.vim
source /Users/nperrin/.config/nvim/plugins/fzf.vim
source /Users/nperrin/.config/nvim/plugins/javascript.vim
source /Users/nperrin/.config/nvim/plugins/jsx-pretty.vim
source /Users/nperrin/.config/nvim/plugins/limelight.vim
source /Users/nperrin/.config/nvim/plugins/nerdcommenter.vim
source /Users/nperrin/.config/nvim/plugins/tex.vim
