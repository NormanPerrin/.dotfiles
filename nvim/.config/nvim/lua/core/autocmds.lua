-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- JSON syntax for avro files
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.avsc,*.avro",
  callback = function()
    vim.bo.filetype = "json"
  end,
})

vim.api.nvim_create_autocmd("ExitPre", {
  group = vim.api.nvim_create_augroup("Exit", { clear = true }),
  command = "set guicursor=a:ver90",
  desc = "Set cursor back to beam when leaving Neovim."
})

-- Maybe useful
-- • autocmd BufRead *.cpp nnoremap <leader><leader>b <cmd>AsyncRun cd build && cmake --build . <cr>
-- • autocmd BufRead *.cpp nnoremap <leader><leader>r <cmd>vs output<cr><cmd>r ! cd build && fd -d 1 -t x \| while read b; do ./$b; done <cr>
