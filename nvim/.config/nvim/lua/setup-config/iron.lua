local M = {}

M.init = function()
  local core = require('iron.core')
  local view = require('iron.view')

  core.setup {
    config = {
      scratch_repl = false,
      repl_open_cmd = view.split.vertical.botright(50),
    }
  }
end

return M
