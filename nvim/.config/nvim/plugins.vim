call plug#begin('$XDG_CONFIG_HOME/nvim/bundle')

" Syntax
Plug 'nvim-treesitter/nvim-treesitter'

" LSP support
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" DAP
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

" Styles
Plug 'MunifTanjim/nui.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Navigation
Plug 'stevearc/oil.nvim'

" Presentation
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" Edition
Plug 'AndrewRadev/switch.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-speeddating'

" Execute async shell commands and out to the quickfix
Plug 'skywind3000/asyncrun.vim'

" Other
Plug 'lewis6991/gitsigns.nvim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/vim-markdown'
Plug 'jbyuki/venn.nvim'
Plug 'diepm/vim-rest-console'

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
