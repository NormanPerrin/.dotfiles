local M = {}

M.init = function()
  require('gitsigns').setup()
  require('telescope').setup()
  require('setup-config.chatgpt').init()
  require('setup-config.tree-sitter').init()
  require('setup-config.lsp-zero').init()
  require('setup-config.dap').init()
  require('setup-config.iron').init()
  require('setup-config.lualine').init()
  require('setup-config.nvim-tree').init()
  require('setup-config.tokyonight').init()
  require('setup-config.set').init()
end

return M
