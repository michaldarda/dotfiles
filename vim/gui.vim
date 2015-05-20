autocmd GUIEnter * set vb t_vb=

set shell=/bin/zsh\ -i

set cursorline

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar
set guioptions-=e "console-like tabs in gvim
set guioptions+=c

"set background=light

colorscheme mac_classic

set guifont=Monaco\ 13

" autocmd Filetype * SemanticHighlight
