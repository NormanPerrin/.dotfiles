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

  require'dapui'.setup{
    sidebar = {
      elements = {
        { id = "breakpoints", size = 0.25 },
        { id = "scopes", size = 0.25 },
        { id = "stacks", size = 0.25 },
      },
    },
    tray = {
      elements = { "repl" },
      size = 10,
      position = "bottom",
    },
  }
  require'nvim-dap-virtual-text'.setup{}
end

return M
