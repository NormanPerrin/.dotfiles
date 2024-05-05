local tokyonight_theme = {
  plugin_name = 'folke/tokyonight.nvim',
  module_name = 'tokyonight',
  opts = {
    style = "night", -- storm, night, moon, day
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
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',    -- fancy icons
      'linrongbin16/lsp-progress.nvim', -- LSP loading progress
    },
    opts = {
      options = {
        extensions = { 'quickfix', 'nvim-tree' },
        theme = 'tokyonight',
      },
      sections = {
        lualine_c = {
          {
            -- Customize the filename part of lualine to be parent/filename
            'filename',
            file_status = true,     -- Displays file status (readonly status, modified status)
            newfile_status = false, -- Display new file status (new file means no write after created)
            path = 4,               -- 0: Just the filename, 1: Relative path, 2: Absolute path, 3: Absolute path, with tilde as the home directory, 4: Filename and parent dir, with tilde as the home directory
            symbols = {
              modified = '[+]',     -- Text to show when the file is modified.
              readonly = '[-]',     -- Text to show when the file is non-modifiable or readonly.
            }
          }
        }
      }
    }
  },
}
