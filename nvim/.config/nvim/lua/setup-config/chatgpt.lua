local M = {}

M.init = function()
  require('chatgpt').setup {
    keymaps = {
      submit = "<CR>",
    }
  }
end

return M
