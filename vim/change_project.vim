function! ChangeProject(target)
  execute "tabe"
  execute "lcd " . a:target
  edit .
endfunction

function! DirsCdPath()
  let paths = split(globpath(&cdpath, '*'), '\n')
  let result = []
  for path in paths
    if isdirectory(path)
      let result += [path]
    endif
  endfor
  return result
endfunction

function! DirInCdPathCompletion(ArgLead, CmdLine, CursorPos)
  let result = []
  for path in DirsCdPath()
    if path =~ a:ArgLead
      let result += [fnamemodify(path, ':t')]
    end
  endfor
  return join(result, "\n")
endfunction

command! -nargs=1 -complete=custom,DirInCdPathCompletion ChangeProject call ChangeProject(<q-args>)
cabbr p ChangeProject
