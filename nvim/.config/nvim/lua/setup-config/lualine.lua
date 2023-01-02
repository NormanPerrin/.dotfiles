local M = {}

M.init = function()
  require('lualine').setup {
    options = {
      extensions = { 'fzf', 'quickfix', 'nvim-tree' },
      theme = 'tokyonight'
    }
  }
end

return M
