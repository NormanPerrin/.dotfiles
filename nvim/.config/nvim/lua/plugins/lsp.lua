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
          "tsserver",
          "yamlls",
        }
      })

      local lspconfig = require('lspconfig')
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lsp_attach = function(client, bufnr)
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
    "mfussenegger/nvim-lint",
    event = {
      "BufReadPre",
      "BufNewFile",
    },
    config = function()
      require("lint").linters.nilaway = {
        cmd = 'nilaway',
        stdin = false,                             -- or false if it doesn't support content input via stdin. In that case the filename is automatically added to the arguments.
        append_fname = true,                       -- Automatically append the file name to `args` if `stdin = false` (default: true)
        args = { '-pretty-print=false', '-json' }, -- list of arguments. Can contain functions with zero arguments that will be evaluated once the linter is used.
        stream = 'stdout',                         -- ('stdout' | 'stderr' | 'both') configure the stream to which the linter outputs the linting result.
        ignore_exitcode = true,                    -- set this to true if the linter exits with a code != 0 and that's considered normal.
        env = nil,                                 -- custom environment table to use with the external process. Note that this replaces the *entire* environment, it is not additive.
        parser = function(output)
          local diagnostics = {}
          local ok, decoded = pcall(vim.json.decode, output)
          if not ok then
            return diagnostics
          end

          local cmdLineArgs = decoded['command-line-arguments']
          if not cmdLineArgs then
            return diagnostics
          end

          local nilaway = cmdLineArgs.nilaway
          if not nilaway then
            return diagnostics
          end

          for _, diagnostic in ipairs(nilaway) do
            local pos = diagnostic.posn
            if not pos then
              goto continue
            end

            local parts = vim.split(pos, ':')
            if #parts < 3 then
              goto continue
            end

            local l = tonumber(parts[2])
            local c = tonumber(parts[3])
            if not l or not c then
              goto continue
            end

            table.insert(diagnostics, {
              -- transform to numbers
              lnum = l - 1,
              col = c - 1,
              message = diagnostic.message,
              severity = vim.diagnostic.severity.WARN
            })

            ::continue::
          end

          return diagnostics
        end
      }

      local lint = require("lint")

      lint.linters_by_ft = {
        go = { "golangcilint", },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })

      vim.keymap.set("n", "<leader>l", function()
        lint.try_lint()
      end, { desc = "Trigger linting for current file" })
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
}
