local M = {}

M.init = function()
  require("tokyonight").setup({
    style = "storm",
    transparent = true,
    sidebars = { "qf", "help", "vista_kind" },
    dim_inactive = true,
  })

  vim.cmd [[colorscheme tokyonight]]
end

return M
