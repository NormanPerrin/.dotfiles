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
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- Fancy icon support
    },
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
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({})
    end
  },
}
