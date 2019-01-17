nmap <leader>p :CtrlP<CR>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard'] 
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_working_path_mode=0

nmap <leader><space> :CtrlPBuffer<CR>
