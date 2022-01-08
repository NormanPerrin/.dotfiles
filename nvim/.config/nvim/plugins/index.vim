call plug#begin('$XDG_CONFIG_HOME/nvim/bundle')
Plug 'neovim/nvim-lspconfig'                      " Laguage server config
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
Plug 'jbyuki/venn.nvim'                           " Diagrams
Plug 'AndrewRadev/switch.vim'                     " Toggle values
Plug 'AndrewRadev/splitjoin.vim'                  " Toggle inline and block code
Plug 'tpope/vim-fugitive'                         " Git for vim
Plug 'tpope/vim-speeddating'                      " Increment dates with <C-a>
call plug#end()

source $XDG_CONFIG_HOME/nvim/plugins/floaterm.vim
source $XDG_CONFIG_HOME/nvim/plugins/javascript.vim
source $XDG_CONFIG_HOME/nvim/plugins/limelight.vim
source $XDG_CONFIG_HOME/nvim/plugins/nerdcommenter.vim
source $XDG_CONFIG_HOME/nvim/plugins/nerdtree.vim
source $XDG_CONFIG_HOME/nvim/plugins/switch.vim

lua << EOF
  function dump(o)
     if type(o) == 'table' then
        local s = '{ '
        for k,v in pairs(o) do
           if type(k) ~= 'number' then k = '"'..k..'"' end
           s = s .. '['..k..'] = ' .. dump(v) .. ','
        end
        return s .. '} '
     else
        return tostring(o)
     end
  end

  local custom_lsp_attach = function(client)
    -- See `:help nvim_buf_set_keymap()` for more information
    vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
    vim.api.nvim_buf_set_keymap(0, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
    -- ... and other keymappings for LSP

    -- Use LSP as the handler for omnifunc.
    --    See `:help omnifunc` and `:help ins-completion` for more information.
    vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- For plugins with an `on_attach` callback, call them here. For example:
    -- require('completion').on_attach()
  end

  -- An example of configuring for `sumneko_lua`,
  --  a language server for Lua.

  print(dump(require('lspconfig').available_servers))
EOF
