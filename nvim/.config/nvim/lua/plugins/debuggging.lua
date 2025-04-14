return {
  {
    "rcarriga/nvim-dap-ui",
    event = "BufReadPre",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap",
      "theHamsta/nvim-dap-virtual-text",
    },
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    lazy = true,
    opts = {
      -- Display debug text as a comment
      commented = true,
      -- Customize virtual text
      display_callback = function(variable, _, _, _, options)
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
