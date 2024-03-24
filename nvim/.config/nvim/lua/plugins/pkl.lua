return {
  "apple/pkl-neovim",
  event = "VeryLazy",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup {
      ensure_installed = "pkl",
      highlight = {
        enable = true, -- false will disable the whole extension
      },
      indent = {
        enable = true
      }
    }
  end,
}
