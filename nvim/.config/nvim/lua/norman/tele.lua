local M = {}

function M.edit_neovim()
  require('telescope.builtin').find_files {
    cwd = '/Users/normanperrin/.config/nvim/'
  }
end

return M
