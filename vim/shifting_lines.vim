" Shifting lines
" Normal mode
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
" Visual mode
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
