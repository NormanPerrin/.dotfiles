return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    opts = {
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      auto_install = true,
      ensure_installed = {
        'regex',
        'lua',
      },
    },
    config = function(_, opts)
      local configs = require("nvim-treesitter.configs")
      configs.setup(opts)
    end
  },
  {
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
      -- LSP Manager Plugins
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim',                opts = {} },
      -- Additional lua configuration, makes nvim stuff amazing!
      { 'folke/neodev.nvim' },
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "bashls",
          "cssls",
          "html",
          "lua_ls",
          "intelephense",
          "jsonls",
          "lemminx",
          "marksman",
          "quick_lint_js",
          "yamlls",
        }
      })

      local lspconfig = require('lspconfig')
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lsp_attach = function(_, _)
        -- keybindings here...
      end

      -- Call setup on each LSP server
      require('mason-lspconfig').setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
          })
        end
      })

      -- Lua LSP settings
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = { 'vim' },
            },
          },
        },
      }
    end
  },
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
  {
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
  },
  {
    'echasnovski/mini.ai',
    config = function()
      require('mini.ai').setup()
    end,
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
}
