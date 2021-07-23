autocmd Filetype rmd noremap <leader>c :!echo<space>"require(rmarkdown);<space>rmarkdown::render('%', quiet=TRUE)"<space>\|R<space>-q<space>--vanilla<enter>
