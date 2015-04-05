nnoremap <silent> \a :set opfunc=<SID>AgMotion<CR>g@
xnoremap <silent> \a :<C-U>call <SID>AgMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
  if a:type ==# 'v'
    silent execute "normal! `<" . a:type . "`>y"
  elseif a:type ==# 'char'
    silent execute "normal! `[v`]y"
  endif
endfunction

function! s:AgMotion(type) abort
  let reg_save = @@

  call s:CopyMotionForType(a:type)

  execute "normal! :Ag " . shellescape(@@) . "\<cr>"

  let @@ = reg_save
endfunction

