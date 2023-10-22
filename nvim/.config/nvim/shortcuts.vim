" Update working directory to file dir
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Write file and execute it
nnoremap <leader><leader>x :w<CR> :source %<CR>
" Make current file executable
nnoremap <space>ex :!chmod +x %<CR>

" Replace word under cursor
nnoremap <space>r :%s/<C-R><C-W>/<C-R><C-W>/gc<Left><Left><Left>

" credits: https://vimtricks.com/p/clear-search-highlight
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Navigate tabs
" gt --> tab next
" gT --> tab previous
" gf --> open a new tab page and edit the file name under the cursor
nnoremap <C-n> :tabnew<CR>

" Move lines in any mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" y behaves like d and c
nnoremap Y y$

" do not undo all text please!
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Cursor freestyle toggle
nnoremap <leader>v :setlocal ve=all<cr>
nnoremap <leader>!v :setlocal ve=<cr>


" | System shortcuts I might forget                                                             |
" | ------------------------------------------------------------------------------------------- |
" | Command                              | Description                                          |
" | ------------------------------------ | ---------------------------------------------------- |
" | <C-w> q                              | Close buffer                                         |
" | <C-w> v                              | Split vertical                                       |
" | <C-w> n                              | Split horizontal                                     |
" | <C-w> o                              | Make the current window the only one on the screen.  |
" | <C-w> r                              | Rotate windows.                                      |
" | <C-w> [hjkl]                         | Move window.                                         |
" | <C-w> f                              | Split window with file under cursor.                 |
" | <C-w-_>                              | Max split window With.                               |
" | <C-w-|>                              | Max split window Height.                             |
" | <C-w-=>                              | 50% split window With/Height.                        |
" | <C-w-K>                              | Position window at Bottom.                           |
" | <C-w-H>                              | Position window at Left.                             |
" | <C-w-T>                              | Split pane into window.                              |
" | <C-o>                                | Go back from regex to original position              |
" | <C-t>                                | Go back from definition to original position         |
" | g[k-j]                               | Move though breaked lines                            |
" | g[0-$]                               | Same as above but for final and first of the line.   |
" | gu                                   | Uncapitalize something                               |
" | gu                                   | Capitalize something                                 |
" | ~                                    | Change capitalization of letter                      |
" | g~                                   | Change capitalization of group                       |
" | gv                                   | Re-select                                            |
" | gJ                                   | Join the line without spaces                         |
" | g&                                   | Apply last substitution to the file                  |
" | <C-g>                                | Show location of cursor in file.                     |
" | %                                    | Go to matching ( { [.                                |
" | #,#<command>                         | Apply command from line # to #.                      |
" | s/sch/sus/c                          | The c options ask for confirmation before applying.  |
" | <C-R>                                | Switch window.                                       |
" | <Shift-l>                            | Go to the bottom of the window.                      |
" | <Shift-h>                            | Go to the top of the window.                         |
" | <daw>                                | Delete around word.                                  |
" | <D>                                  | Same as d$.                                          |
" | <C>                                  | Change as c$.                                        |
" | <''>                                 | Go back to last place.                               |
" | <zz>                                 | Go to the center of the screen                       |
" | <zt>                                 | Go to bot†om of the screen.                          |
" | :earlier 10m                         | Go back 10m in time.                                 |
" | <]s>                                 | Navigate language error forward.                     |
" | <[s>                                 | Navigate language error backwards.                   |
" | <z=>                                 | Fix language error.                                  |
"
"
" | Set options I might forget                                                                  |
" | ------------------------------------------------------------------------------------------- |
" | Command                              | Description                                          |
" | ------------------------------------ | ---------------------------------------------------- |
" | :setlocal spell! spelllang=en_us     | Change language checking.                            |
" | :set noic                            | No ignore case in searchs.                           |
" | :set ic                              | Ignore case in searchs.                              |
" | :ser invic                           | Toggle ic option.                                    |

" goyo
nnoremap <leader>z :Goyo<CR>

" .diagram files
autocmd BufNewFile,BufRead *.diagram :setlocal ve=all
autocmd BufNewFile,BufRead *.diagram nnoremap J <C-v>j:VBox<cr>
autocmd BufNewFile,BufRead *.diagram nnoremap K <C-v>k:VBox<cr>
autocmd BufNewFile,BufRead *.diagram nnoremap H <C-v>h:VBox<cr>
autocmd BufNewFile,BufRead *.diagram nnoremap L <C-v>l:VBox<cr>
autocmd BufNewFile,BufRead *.diagram vnoremap f :VBox<cr>

" tree
nnoremap <leader>p :NvimTreeToggle<CR>

" telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fs <cmd>Telescope lsp_workspace_symbols<cr>

" spell
autocmd BufRead neomutt-*,*.md :setlocal spell spelllang=en_us
autocmd BufRead neomutt-*,*.md nnoremap <C-m> :setlocal spell spelllang=
