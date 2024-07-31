-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>")           -- exit insert mode with jk
keymap.set("i", "ii", "<ESC>")           -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>")  -- save

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>")   -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>") -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>") -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c")             -- next diff hunk
keymap.set("n", "<leader>cp", "[c")             -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qn", ":cnext<CR>") -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>") -- jump to prev quickfix list item

-- Navigation
keymap.set('n', '<leader>ff', require('fzf-lua').files, {})
keymap.set('n', '<leader>fq', require('fzf-lua').quickfix, {})
keymap.set('n', '<leader>fg', require('fzf-lua').live_grep, {})
keymap.set('n', '<leader>fj', require('fzf-lua').jumps, {})
keymap.set('n', '<leader>fb', require('fzf-lua').buffers, {})

-- Git
keymap.set('n', '<leader>gf', require('fzf-lua').git_files, {})
keymap.set('n', '<leader>gc', require('fzf-lua').git_commits, {})
keymap.set('n', '<leader>gb', require('fzf-lua').git_branches, {})
keymap.set('n', '<leader>gst', require('fzf-lua').git_status, {})
keymap.set("n", "<leader>gm", ":Gitsigns blame_line<CR>")

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end)
keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end)
keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end)
keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end)

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>fm', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('v', '<leader>fm', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", '<leader>ba', require('fzf-lua').dap_breakpoints, {})
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", '<leader>dd', function()
  require('dap').disconnect(); require('dapui').close();
end)
keymap.set("n", '<leader>dt', function()
  require('dap').terminate(); require('dapui').close();
end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", '<leader>di', function() require "dap.ui.widgets".hover() end)
keymap.set("n", '<leader>d?',
  function()
    local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes)
  end)

-- Replace
keymap.set("n", "<leader>r", ":%s/<C-R><C-W>/<C-R><C-W>/gc<Left><Left><Left>") -- save

-- Clear (https://vimtricks.com/p/clear-search-highlight)
keymap.set("n", "<C-l>", ":nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>") -- clear

-- Move lines in any mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<leader>k", ":m .-2<CR>==")
keymap.set("n", "<leader>j", ":m .+1<CR>==")

-- Do not undo all text please!
keymap.set("i", ",", ",<c-g>u")
keymap.set("i", ".", ".<c-g>u")
keymap.set("i", ";", ";<c-g>u")
keymap.set("i", "!", "!<c-g>u")
keymap.set("i", "?", "?<c-g>u")

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")   -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>")    -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer

-- No-neck
keymap.set("n", "<leader>nn", ":NoNeckPain<CR>") -- toggle no-neck-pain
