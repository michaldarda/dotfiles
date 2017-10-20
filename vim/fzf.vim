nmap <leader><leader> :Commands<CR>
nmap <leader>o :GFiles<CR>
nmap <leader>p :GFiles<CR>
nmap <leader>b :Buffers<CR>

let g:fzf_buffers_jump = 1

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nmap <leader>a :Rg<space>
