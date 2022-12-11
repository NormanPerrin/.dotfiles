local M = {}

M.init = function()
  local null_ls = require("null-ls")

  local sources = {
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.diagnostics.shellcheck
  }

  null_ls.setup({ sources = sources })
end

return M
