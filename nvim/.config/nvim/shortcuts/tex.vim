" Package
autocmd FileType tex inoremap ;up \usepackage{}<Esc>i

" Metadata
autocmd FileType tex inoremap ;at \author{}<Esc>i
autocmd FileType tex inoremap ;tt \title{}<Esc>i

" Markup
autocmd FileType tex inoremap ;a \href{}<Esc>i
autocmd FileType tex inoremap ;li \item <Esc>i
autocmd FileType tex inoremap ;ol \begin{enumerate}<Esc>o
autocmd FileType tex inoremap ;ul \begin{itemize}<Esc>i

" Formatting
autocmd FileType tex inoremap ;b \textbf{}<Esc>i
autocmd FileType tex inoremap ;em \emph{}<Esc>i
autocmd FileType tex inoremap ;i \textit{}<Esc>i
autocmd FileType tex inoremap ;under \underline{}<Esc>i

" Citations
autocmd FileType tex inoremap ;r \ref{}<Esc>i

" Content addition
autocmd FileType tex inoremap ;mtt \maketitle{}<Esc>i
autocmd FileType tex inoremap ;toc \tableofcontents<Esc>o

" General
autocmd FileType tex inoremap ;beg \begin{}<Esc>i
autocmd FileType tex inoremap ;end \end{}<Esc>i
autocmd FileType tex inoremap ;sec \section{}<Esc>i
autocmd FileType tex inoremap ;ssec \subsection{}<Esc>i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Esc>i
