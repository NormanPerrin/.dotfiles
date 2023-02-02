local M = {}

M.init = function()
  require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
      'bash',
      'css',
      'dockerfile',
      'go',
      'gomod',
      'graphql',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'lua',
      'make',
      'python',
      'rust',
      'sql',
      'terraform',
      'typescript',
      'yaml',
    },
    sync_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    indent = {
      enable = true
    }
  }

  --vim.cmd[[set foldmethod=expr]]
  --vim.cmd[[set foldexpr=nvim_treesitter#foldexpr()]]
end

return M
