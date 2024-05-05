return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
    config = function(_, opts)
      require("copilot").setup(opts)
    end,
  },
  {
    "numToStr/Comment.nvim",
    event = 'VeryLazy',
    config = function()
      require('Comment').setup({
        opleader = {
          ---Line-comment keymap
          line = '<leader>/',
          ---Block-comment keymap
          block = '<leader>b',
        },
      })
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',

      -- Copilot
      'zbirenbaum/copilot-cmp',
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      require("copilot_cmp").setup()

      vim.opt.completeopt = "menu,menuone,noselect"

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(),         -- previous suggestion
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),       -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(),         -- next suggestion
          ["<Tab>"] = cmp.mapping.select_next_item(),         -- next suggestion
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),            -- scroll backward
          ["<C-f>"] = cmp.mapping.scroll_docs(4),             -- scroll forward
          ["<C-Space>"] = cmp.mapping.complete(),             -- show completion suggestions
          ["<C-e>"] = cmp.mapping.abort(),                    -- clear completion window
          ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm selection
        }),
        sources = cmp.config.sources({
          { name = "copilot" },  -- copilot
          { name = "nvim_lsp" }, -- lsp
          { name = "luasnip" },  -- snippets
          { name = "buffer" },   -- text within current buffer
          { name = "path" },     -- file system paths
        }),
      })
    end,
  },
}
