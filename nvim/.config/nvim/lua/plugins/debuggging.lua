return {
  {
    "rcarriga/nvim-dap-ui",
    event = "BufReadPre",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function(_, opts)
      local dap = require('dap')
      require('dapui').setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        require('dapui').open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        require('dapui').close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        require('dapui').close()
      end
    end
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    lazy = true,
    opts = {
      -- Display debug text as a comment
      commented = true,
      -- Customize virtual text
      display_callback = function(variable, buf, stackframe, node, options)
        if options.virt_text_pos == 'inline' then
          return ' = ' .. variable.value
        else
          return variable.name .. ' = ' .. variable.value
        end
      end,
    }
  },
  {
    'leoluz/nvim-dap-go',
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require('dap-go').setup()
    end
  },
}
