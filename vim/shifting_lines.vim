" Shifting lines
" Normal mode
nnoremap <S-down> :m .+1<CR>==
nnoremap <S-up> :m .-2<CR>==
" Visual mode
vnoremap <S-down> :m '>+1<CR>gv=gv
vnoremap <S-up> :m '<-2<CR>gv=gv
