return {
  {
    'ThePrimeagen/harpoon',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      menu = {
        width = 120
      }
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      actions = {
        open_file = {
          window_picker = {
            enable = false
          },
        },
      },
      view = {
        width = 50,
      },
      renderer = {
        add_trailing = true,
        group_empty = true,
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
          }
        }
      }
    },
    config = function(_, opts)
      -- Recommended settings to disable default netrw file explorer
      vim.g.loaded = 1
      vim.g.loaded_netrwPlugin = 1
      require("nvim-tree").setup(opts)
    end
  },
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({})
    end
  },
}
