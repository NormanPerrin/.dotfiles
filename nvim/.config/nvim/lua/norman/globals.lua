local M = {}

M.setup = function()
  P = function(v)
    print(vim.inspect(v))
    return v
  end
end

return M
