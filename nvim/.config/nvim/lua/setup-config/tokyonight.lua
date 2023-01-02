local M = {}

M.init = function()
  require("tokyonight").setup({
    style = "storm",
    transparent = true,
    sidebars = { "qf", "help", "vista_kind", "terminal" },
    dim_inactive = true,
  })

  vim.cmd [[colorscheme tokyonight]]
end

return M
