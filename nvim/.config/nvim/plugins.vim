call plug#begin('$XDG_CONFIG_HOME/nvim/bundle')
Plug 'neovim/nvim-lspconfig'                      " lsp core config
Plug 'williamboman/nvim-lsp-installer'            " lsp installer
Plug 'nvim-treesitter/nvim-treesitter'            " better syntax

Plug 'hrsh7th/nvim-cmp'                           " completition
Plug 'hrsh7th/cmp-nvim-lsp'                       "   * lsp
Plug 'hrsh7th/cmp-nvim-lua'                       "   * lua
Plug 'hrsh7th/cmp-buffer'                         "   * buffer
Plug 'hrsh7th/cmp-path'                           "   * path

Plug 'L3MON4D3/LuaSnip'                           " Lua snippets
Plug 'saadparwaiz1/cmp_luasnip'                   " cmp for lua snippets
Plug 'onsails/lspkind-nvim'                       " pretty suggestions in cmp

Plug 'nvim-telescope/telescope.nvim'              " Fuzzy finder
Plug 'nvim-lua/plenary.nvim'                      " telescope dependency
Plug 'voldikss/vim-floaterm'                      " Floating shell
Plug 'hoob3rt/lualine.nvim'                       " Status line

Plug 'preservim/nerdcommenter'                    " Comments
Plug 'preservim/nerdtree'                         " Directory-manager
Plug 'ryanoasis/vim-devicons'                     " Dev Icons

Plug 'junegunn/limelight.vim'                     " Hightlight cursorline toggle
Plug 'junegunn/goyo.vim'                          " Center content toggle

Plug 'ThePrimeagen/vim-be-good'                   " Vim practice
Plug 'AndrewRadev/switch.vim'                     " Toggle values
Plug 'AndrewRadev/splitjoin.vim'                  " Toggle inline and block code
Plug 'tpope/vim-speeddating'                      " Increment dates with <C-a>

Plug 'jbyuki/venn.nvim'                           " Diagrams
Plug 'tpope/vim-fugitive'                         " Git for vim

Plug 'preservim/vim-markdown'                     " Markdown

Plug 'hashivim/vim-terraform'                     " Terraform files type and some commands
Plug 'ekalinin/Dockerfile.vim'                    " Dockerfile file type and syntax...
call plug#end()


" ---------------------- CONFIG ---------------------- "

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fr <cmd>Telescope lsp_references<cr>
nnoremap <leader>fd <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>ft <cmd>Telescope lsp_type_definitions<cr>
nnoremap <leader>fi <cmd>Telescope lsp_implementations<cr>

" floatterm
let g:floaterm_keymap_new = '<Leader>tn'
let g:floaterm_keymap_toggle = '<Leader>tt'
let g:floaterm_keymap_next = '<Leader>tn'
let g:floaterm_keymap_prev = '<Leader>tp'
let g:floaterm_keymap_kill = '<Leader>tk'
let g:floaterm_gitcommit = 'vsplit'

" limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_bop = '^'
let g:limelight_eop = '\n'

" nerdcommenter
let g:NERDSpaceDelims = 1

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>p :NERDTreeToggle<CR>

" switch
let g:switch_mapping = "-"

" markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ["ts=typescript", "js=javascript"]

lua << EOF
  require('lspkind').init()
  require('setup-config/lsp')
  require('setup-config/cmp')
  require('setup-config/tree-sitter')
  require('setup-config/lualine')
EOF
