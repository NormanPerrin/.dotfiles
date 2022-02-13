local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup {
  mapping = {
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-h>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true })
  },

  sources = {
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' }
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = '[buff]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[api]',
        path = '[[path]'
      }
    }
  }
}

vim.cmd([[
  augroup LuaLS
    au!
    autocmd FileType lua lua require('cmp').setup.buffer { sources = { { name = 'nvim_lua' } } }
  augroup END
]])
