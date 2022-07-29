local M = {}

M.init = function()
  local lspconfig = require('lspconfig')
  local helpers = require('setup-config/helpers')

  local opts = { noremap=true, silent=true }
  local setKeymap = helpers.getSetKeymap(opts)

  setKeymap('n', '<space>f', 'vim.lsp.buf.formatting'   )
  setKeymap('n', '<space>q', 'vim.diagnostic.setloclist')
  setKeymap('n', '<space>e', 'vim.diagnostic.open_float')
  setKeymap('n', ']d'      , 'vim.diagnostic.goto_next' )
  setKeymap('n', '[d'      , 'vim.diagnostic.goto_prev' )

  local function on_attach(_, bufnr)
    local setBufKeymap = helpers.getSetBufKeymap(bufnr, opts)

    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    setBufKeymap('n', 'gd'       , 'vim.lsp.buf.definition'     )
    setBufKeymap('n', 'gi'       , 'vim.lsp.buf.implementation' )
    setBufKeymap('n', 'gy'       , 'vim.lsp.buf.type_definition')
    setBufKeymap('n', 'K'        , 'vim.lsp.buf.hover'          )
    setBufKeymap('n', '<C-k>'    , 'vim.lsp.buf.signature_help' )
    setBufKeymap('n', '<space>ca', 'vim.lsp.buf.code_action'    )
    setBufKeymap('n', '<space>rn', 'vim.lsp.buf.rename'         )
  end

  lspconfig.terraformls.setup{
    on_attach = on_attach
  }

  lspconfig.cucumber_language_server.setup{
    on_attach = on_attach
  }

  lspconfig.tsserver.setup{
    on_attach = on_attach
  }

  lspconfig.sqlls.setup{
    on_attach = on_attach
  }

  lspconfig.bashls.setup{
    on_attach = on_attach
  }

  lspconfig.dockerls.setup{
    on_attach = on_attach,
  }

  lspconfig.jsonls.setup{
    on_attach = on_attach
  }

  lspconfig.yamlls.setup{
    on_attach = on_attach
  }

  lspconfig.html.setup{
    cmd = { "vscode-html-language-server", "--stdio" },
    on_attach = on_attach
  }

  lspconfig.gopls.setup{
    on_attach = on_attach
  }

  lspconfig.rust_analyzer.setup{
    on_attach = on_attach
  }

  lspconfig.sumneko_lua.setup{
    on_attach = on_attach,
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
          path = '/opt/homebrew/bin/lua'
        },
        diagnostics = {
          globals = {'vim'},
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
        }
      }
    }
  }

  require'lspconfig'.intelephense.setup{
    on_attach = on_attach
  }
end

return M
