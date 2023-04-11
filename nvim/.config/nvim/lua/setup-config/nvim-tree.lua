local M = {}

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

M.init = function()
  require('nvim-tree').setup {
    disable_netrw = true,
    hijack_cursor = true,
    view = {
      adaptive_size = true,
      relativenumber = true,
    }
  }

  vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

  local api = require("nvim-tree.api")
  api.events.subscribe(api.events.Event.FileCreated, function(file)
    vim.cmd("edit " .. file.fname)
  end)
end

return M
