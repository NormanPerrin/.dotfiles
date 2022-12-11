local M = {}

M.init = function()
  vim.api.nvim_set_keymap('n', '=c', "<cmd>lua require'dap'.continue()<CR>", {})
  vim.api.nvim_set_keymap('n', '=s', "<cmd>lua require'dap'.step_over()<CR>", {})
  vim.api.nvim_set_keymap('n', '=i', "<cmd>lua require'dap'.step_into()<CR>", {})
  vim.api.nvim_set_keymap('n', '=o', "<cmd>lua require'dap'.step_out()<CR>", {})
  vim.api.nvim_set_keymap('n', '=b', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {})
  vim.api.nvim_set_keymap('n', '=B', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Condition: '))<CR>", {})
  vim.api.nvim_set_keymap('n', '=t', "<cmd>lua require'dapui'.toggle()<CR>", {})

  local dap = require("dap")

  dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = {os.getenv('XDG_DATA_HOME')..'/repos/vscode-node-debug2/out/src/nodeDebug.js'},
  }

  dap.configurations.javascript = {
    {
      name = 'Launch',
      type = 'node2',
      request = 'launch',
      program = '${file}',
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = 'inspector',
      console = 'integratedTerminal',
    },
    {
      name = 'Attach to process',
      type = 'node2',
      request = 'attach',
      processId = require'dap.utils'.pick_process,
    },
  }

  require('dapui').setup({
    layouts = {
      {
        elements = {
          'scopes',
          'breakpoints',
          'stacks',
          'watches',
        },
        size = 40,
        position = 'left',
      },
      {
        elements = {
          'repl',
          'console',
        },
        size = 10,
        position = 'bottom',
      },
    },
  })

  local api = vim.api
  local keymap_restore = {}

  dap.listeners.after['event_initialized']['me'] = function()
    for _, buf in pairs(api.nvim_list_bufs()) do
      local keymaps = api.nvim_buf_get_keymap(buf, 'n')
      for _, keymap in pairs(keymaps) do
        if keymap.lhs == "K" then
          table.insert(keymap_restore, keymap)
          api.nvim_buf_del_keymap(buf, 'n', 'K')
        end
      end
    end
    api.nvim_set_keymap('n', 'K', '<Cmd>lua require("dap.ui.widgets").hover()<CR>', { silent = true })
  end

  dap.listeners.after['event_terminated']['me'] = function()
    for _, keymap in pairs(keymap_restore) do
      api.nvim_buf_set_keymap(
        keymap.buffer,
        keymap.mode,
        keymap.lhs,
        keymap.rhs,
        { silent = keymap.silent == 1 }
      )
    end
    keymap_restore = {}
  end

  require'nvim-dap-virtual-text'.setup{}
end

return M
