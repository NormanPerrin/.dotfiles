" Update working directory to file dir
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Format
nnoremap Q gq

" Navigate tabs
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-n> :tabnew<CR>

" Move lines in any mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" y behaves like d and c
nnoremap Y y$

" do not undo all text please!
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" | System shortcuts I might forget                                                             |
" | ------------------------------------------------------------------------------------------- |
" | Command                              | Description                                          |
" | ------------------------------------ | ---------------------------------------------------- |
" | <C-w> q                              | Close buffer                                         |
" | <C-w> v                              | Split vertical                                       |
" | <C-w> n                              | Split horizontal                                     |
" | gx                                   | Open hovered link.                                   |
" | g[k-j]                               | Move though breaked lines                            |
" | g[0-$]                               | Same as above but for final and first of the line.   |
" | gu                                   | Uncapitalize something                               |
" | gu                                   | Capitalize something                                 |
" | ~                                    | Change capitalization of letter                      |
" | g~                                   | Change capitalization of group                       |
" | gf                                   | Go to file                                           |
" | gv                                   | Re-select                                            |
" | gJ                                   | Join the line without spaces                         |
" | g&                                   | Apply last substitution to the file                  |
" | <C-g>                                | Show location of cursor in file.                     |
" | %                                    | Go to matching ( { [.                                |
" | #,#<command>                         | Apply command from line # to #.                      |
" | s/sch/sus/c                          | The c options ask for confirmation before applying.  |
" | <C-w-_>                              | Max split window With.                               |
" | <C-w-|>                              | Max split window Height.                             |
" | <C-w-K>                              | Position window at Bottom.                           |
" | <C-w-H>                              | Position window at Left.                             |
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
" | :setlocal spell! spelllang=en_us     | Change language checking.                            |
" | <]s>                                 | Navigate language error forward.                     |
" | <[s>                                 | Navigate language error backwards.                   |
" | <z=>                                 | Fix language error.                                  |


source $XDG_CONFIG_HOME/nvim/shortcuts/coc.vim
source $XDG_CONFIG_HOME/nvim/shortcuts/fzf.vim
source $XDG_CONFIG_HOME/nvim/shortcuts/html.vim
source $XDG_CONFIG_HOME/nvim/shortcuts/nerdtree.vim
source $XDG_CONFIG_HOME/nvim/shortcuts/goyo.vim
