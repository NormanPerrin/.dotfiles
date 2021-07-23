" Show documentation
nnoremap <silent> <leader>k :call CocAction('doHover')<CR>

" Goto
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Navigate errors
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" List diagnostic
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

" Rename
nmap <leader>rn <Plug>(coc-rename)

" Format
nnoremap <silent> F :call CocCommand('prettier.formatFile')<CR>
