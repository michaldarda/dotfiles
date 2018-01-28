function! OpenFileInCWD(filename)
  let l:current_working_dir = getcwd()
  let l:filepath = l:current_working_dir . '/' . a:filename
  if filereadable(l:filepath)
    execute "edit " . l:filepath
  else
    echom "File " . l:filepath . " doesn't exists"
  endif
endfunction

function! Egemfile()
  call OpenFileInCWD("Gemfile")
endfunction

function! Egemfilelock()
  call OpenFileInCWD("Gemfile.lock")
endfunction

function! Egspec()
  execute "edit **/*.gemspec"
endfunction

command! Egemfile call Egemfile()
command! Eglock call Egemfilelock()
command! Egspec call Egspec()

"autocmd FileType ruby autocmd BufWritePost <buffer> Fmt
nmap ff :Fmt<CR>
nmap fs :SyntasticCheck<CR>
let g:blockle_mapping = 'bl'

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
