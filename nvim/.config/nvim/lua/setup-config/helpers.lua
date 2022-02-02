local M = {}

M.getSetBufKeymap = function(bufnr, opts)
  return function(mode, shortcut, fnString)
    vim.api.nvim_buf_set_keymap(bufnr, mode, shortcut, '<cmd>lua '..fnString..'()<CR>', opts)
  end
end

M.getSetKeymap = function(opts)
  return function(mode, shortcut, fnString)
    vim.api.nvim_set_keymap(mode, shortcut, '<cmd>lua '..fnString..'()<CR>', opts)
  end
end

return M
