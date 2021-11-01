autocmd BufNewFile,BufRead *.diagram :setlocal ve=all
autocmd BufNewFile,BufRead *.diagram nnoremap J <C-v>j:VBox<cr>
autocmd BufNewFile,BufRead *.diagram nnoremap K <C-v>k:VBox<cr>
autocmd BufNewFile,BufRead *.diagram nnoremap H <C-v>h:VBox<cr>
autocmd BufNewFile,BufRead *.diagram nnoremap L <C-v>l:VBox<cr>
autocmd BufNewFile,BufRead *.diagram vnoremap f :VBox<cr>
