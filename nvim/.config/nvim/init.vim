source $XDG_CONFIG_HOME/nvim/plugins/index.vim

" Don't try to be compatible with old vim
set nocompatible

" Side relative number
set relativenumber
" Hightlight current cursor line
set cursorline
" lazy drawing
set lazyredraw
set ttyfast
" set working directory as the one of the opened file
set autochdir

" Scroll
set scrolloff=4
set sidescrolloff=4

" Colors for syntax
syntax on
" Recognize type of file edited; Type file indent and plugin loaded when edited
filetype plugin indent on

let skip_defaults_vim=1
set viminfo=""

" :find
set path+=**
set wildignore+=**/node_modules/**

" On searchs, ignore case
set ignorecase

" Show hidden char
set list
" Show hidden chars as
set listchars=tab:‣\ ,trail:˽

set t_Co=256

" open split below and right
set splitbelow
set splitright

" see https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

" Use default clipboard for Mac OS: https://stackoverflow.com/a/18553778/34315
set clipboard=unnamed

" (homebrew version). see https://stackoverflow.com/a/3534090/34315
set backspace=indent,eol,start

set guifont=JetBrainsMono\ Nerd\ Font:h18
colorscheme wombat256dave
highlight Whitespace ctermfg=DarkGrey guifg=grey70

source $XDG_CONFIG_HOME/nvim/functions.vim
source $XDG_CONFIG_HOME/nvim/indentation.vim
source $XDG_CONFIG_HOME/nvim/shortcuts/index.vim
