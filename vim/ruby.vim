function! OpenFileInCWD(filename)
  let l:current_working_dir = getcwd()
  let l:filepath = l:current_working_dir . '/' . a:filename
  if filereadable(l:filepath)
    execute "edit " . l:filepath
  else
    echom "File " . l:filepath . " doesn't exists"
  endif
endfunction

function! Rgemfile()
  call OpenFileInCWD("Gemfile")
endfunction

function! Rgemfilelock()
  call OpenFileInCWD("Gemfile.lock")
endfunction

function! Rgspec()
  execute "edit **/*.gemspec"
endfunction

command! Rgemfile call Rgemfile()
command! Rglock call Rgemfilelock()
command! Rgspec call Rgspec()

"autocmd FileType ruby autocmd BufWritePost <buffer> Fmt
nmap ff :Fmt<CR>
