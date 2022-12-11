call plug#begin('$XDG_CONFIG_HOME/nvim/bundle')
Plug 'neovim/nvim-lspconfig'                                       " lsp core config
Plug 'williamboman/mason.nvim'                                     " lsp installer
Plug 'nvim-treesitter/nvim-treesitter'                             " better syntax

Plug 'jose-elias-alvarez/null-ls.nvim'                             " integrate linters, code actions, etc.

Plug 'hrsh7th/nvim-cmp'                                            " completition
Plug 'hrsh7th/cmp-nvim-lsp'                                        "   * lsp
Plug 'hrsh7th/cmp-nvim-lua'                                        "   * lua
Plug 'hrsh7th/cmp-buffer'                                          "   * buffer
Plug 'hrsh7th/cmp-path'                                            "   * path

Plug 'https://github.com/github/copilot.vim'

Plug 'mfussenegger/nvim-dap'                                       " Debugger
Plug 'rcarriga/nvim-dap-ui'                                        "   * UI
Plug 'theHamsta/nvim-dap-virtual-text'                             "   * peak values

Plug 'L3MON4D3/LuaSnip'                                            " Lua snippets
Plug 'saadparwaiz1/cmp_luasnip'                                    " cmp for lua snippets
Plug 'onsails/lspkind-nvim'                                        " pretty suggestions in cmp

Plug 'nvim-telescope/telescope.nvim'                               " Telescope
Plug 'nvim-lua/plenary.nvim'                                       "   * dependency
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }  "   * native fzf
Plug 'nvim-telescope/telescope-project.nvim'                       "   * change between projects

Plug 'kyazdani42/nvim-tree.lua'                                    " File explorer
Plug 'hoschi/yode-nvim'                                            " Side floating panel
Plug 'hoob3rt/lualine.nvim'                                        " Status line
Plug 'kyazdani42/nvim-web-devicons'                                " Dev Icons
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'preservim/nerdcommenter'                                     " Comments

Plug 'junegunn/limelight.vim'                                      " Hightlight cursorline toggle
Plug 'junegunn/goyo.vim'                                           " Center content toggle

Plug 'AndrewRadev/switch.vim'                                      " Toggle values
Plug 'AndrewRadev/splitjoin.vim'                                   " Toggle inline and block code
Plug 'tpope/vim-speeddating'                                       " Increment dates with <C-a>

Plug 'jbyuki/venn.nvim'                                            " Diagrams
Plug 'preservim/vim-markdown'                                      " Markdown

Plug 'hashivim/vim-terraform'                                      " Terraform files type and some commands
Plug 'ekalinin/Dockerfile.vim'                                     " Dockerfile file type and syntax...
call plug#end()


" ---------------------- CONFIG ---------------------- "

" limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_bop = '^'
let g:limelight_eop = '\n'

" nerdcommenter
let g:NERDSpaceDelims = 1

" switch
let g:switch_mapping = "-"

" markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ["ts=typescript", "js=javascript"]

lua << EOF
  require('setup-config').init()
  require('norman.globals').setup()
EOF
