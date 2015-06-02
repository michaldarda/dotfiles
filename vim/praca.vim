" praca dyplomowa ustawienia
autocmd BufRead,BufNewFile /home/michal/Code/play/praca/praca_dyplomowa.tex set spell spelllang=pl
autocmd BufRead,BufNewFile /home/michal/Code/play/praca/praca_dyplomowa.tex command Run execute "!./make"
autocmd BufRead,BufNewFile /home/michal/Code/play/praca/praca_dyplomowa.tex map <F5> :Run<CR>
autocmd BufRead,BufNewFile /home/michal/Code/play/praca/praca_dyplomowa.tex set wrap
autocmd BufRead,BufNewFile /home/michal/Code/play/praca/praca_dyplomowa.tex set colorcolumn=130
autocmd BufRead,BufNewFile /home/michal/Code/play/praca/praca_dyplomowa.tex set tw=120
