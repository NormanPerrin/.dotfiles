local M = {}

M.init = function()
  local map = vim.api.nvim_set_keymap

  local options = { noremap = true }

  --vim.api.nvim_command([[
    --tnoremap <ESC> <C-\><C-n>
  --]])

  map('n', '<leader>tl', '<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 lazynpm<CR>', options)
  map('n', '<leader>tt', '<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 zsh<CR>', options)
  map('n', '<leader>tn', '<CMD>FloatermNew node<CR>', options)
end

return M
