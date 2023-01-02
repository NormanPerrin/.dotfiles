local M = {}

M.init = function()
  -- Identing
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 0
  vim.opt.expandtab = true

  -- Style
  vim.opt.nu = true
  vim.opt.relativenumber = true
  vim.opt.guifont = 'JetBrainsMono Nerd Font:h18'
  vim.opt.termguicolors = true
  vim.opt.showtabline = 2
  vim.opt.scrolloff = 4
  vim.opt.sidescrolloff = 4
  vim.opt.wrap = false

  -- Editing
  vim.opt.list = true
  vim.opt.listchars = 'tab:▸ ,trail:·,nbsp:␣,extends:❯,precedes:❮'
  vim.opt.smartindent = true

  -- Searching
  vim.opt.hlsearch = true
  vim.opt.incsearch = true
  vim.opt.ignorecase = true

  -- Swap file
  vim.opt.swapfile = false
  vim.opt.backup = false
  vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
  vim.opt.undofile = true

  -- Optimizations
  vim.opt.lazyredraw = true
  vim.opt.updatetime = 50
  vim.opt.timeoutlen = 500
  vim.opt.ttimeoutlen = 0

  -- Default side for split
  vim.opt.splitright = true
  vim.opt.splitbelow = true

  -- Mac OS things
  vim.opt.clipboard = 'unnamedplus'
  vim.opt.backspace = 'indent,eol,start'
end


return M
