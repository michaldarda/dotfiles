set nocompatible

" Install vim-plug plugin manager and plugins, when missing
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !echo "Installing vim-plug..." && curl --silent --fail --location --output ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

set shell=$SHELL

source ~/dotfiles/vim/plug.vim
source ~/dotfiles/vim/basic.vim
source ~/dotfiles/vim/rename_file.vim
source ~/dotfiles/vim/notes.vim
source ~/dotfiles/vim/change_project.vim
source ~/dotfiles/vim/ruby.vim
source ~/dotfiles/vim/vim_test.vim
source ~/dotfiles/vim/surround.vim
source ~/dotfiles/vim/shifting_lines.vim
source ~/dotfiles/vim/syntastic.vim
source ~/dotfiles/vim/ctrlp.vim

let g:ragtag_global_maps = 1
nmap <leader>a :Ag<Space>
cmap <c-x> <Plug>CmdlineCompleteForward

if has("gui_running") || has("nvim") || has("neovim")
  source ~/dotfiles/vim/gui.vim
else
  source ~/dotfiles/vim/term.vim
endif

set omnifunc=syntaxcomplete#Complete

set mouse=a
set clipboard=unnamed

" Always use vertical diffs
set diffopt+=vertical

" http://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
function s:MkNonExDir(file, buf)
  if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
    let dir=fnamemodify(a:file, ':h')
    if !isdirectory(dir)
      call mkdir(dir, 'p')
    endif
  endif
endfunction
augroup BWCCreateDir
  autocmd!
  autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

let g:netrw_localrmdir="rm -r"

set number

au BufRead,BufNewFile *.es6 setfiletype javascript
set termguicolors
colorscheme grb256

set list listchars=tab:»-,trail:·,extends:»,precedes:«
