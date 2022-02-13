local M = {}

function M.setup()
  require('setup-config.lsp')
  require('setup-config.cmp')
  require('setup-config.tree-sitter')
  require('setup-config.lualine')
  require('setup-config.luasnip')
  require('setup-config.tele')
end

return M
