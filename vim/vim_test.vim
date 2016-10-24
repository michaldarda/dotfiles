nmap <silent> <leader>q :TestNearest<CR>
nmap <silent> <leader>w :TestFile<CR>

nmap <silent> <leader>m :exec "!"."./bin/m ".expand("%").":".line(".")<CR>

let test#ruby#runner = 'm'
