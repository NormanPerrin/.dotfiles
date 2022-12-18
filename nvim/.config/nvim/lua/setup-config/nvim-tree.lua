local M = {}

M.init = function()
  require('nvim-tree').setup {
    disable_netrw = true,
    hijack_cursor = true,
    view = {
      adaptive_size = true,
      relativenumber = true,
    }
  }
end

return M
