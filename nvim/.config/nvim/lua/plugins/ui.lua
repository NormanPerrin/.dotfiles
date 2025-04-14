local tokyonight_theme = {
  plugin_name = 'folke/tokyonight.nvim',
  module_name = 'tokyonight',
  opts = {
    style = "moon", -- storm, night, moon, day
    transparent = false,
    sidebars = { "qf", "help", "vista_kind" },
    dim_inactive = true,
  },
}

local chosen_theme = tokyonight_theme

return {
  {
    chosen_theme.plugin_name,
    opts = chosen_theme.opts,
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      require(chosen_theme.module_name).setup(opts)
      vim.cmd("colorscheme " .. chosen_theme.module_name)
    end
  },
  {
    'rcarriga/nvim-notify',
    event = "VeryLazy",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "rcarriga/nvim-notify",
    },
  },
  {
    "shortcuts/no-neck-pain.nvim",
    event = "VeryLazy",
    config = function()
      require("no-neck-pain").setup({
        buffers = {
          scratchPad = {
            enabled = true,
            fileName = "notes",
            location = "~/",
          },
          bo = {
            filetype = "md",
          },
        },
      })
    end
  },
}
