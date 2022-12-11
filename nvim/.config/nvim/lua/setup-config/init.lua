local M = {}

function M.init()
  require('lspkind').init()
  require('nvim-tree').setup()
  require('yode-nvim').setup()
  require('gitsigns').setup()
  require("mason").setup()
  require('setup-config.tokyonight').init()
  require('setup-config.lsp').init()
  require('setup-config.cmp').init()
  require('setup-config.tree-sitter').init()
  require('setup-config.lualine').init()
  require('setup-config.luasnip').init()
  require('setup-config.dap').init()
  require('setup-config.null-ls').init()
end

return M
