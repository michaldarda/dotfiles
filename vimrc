  set nocompatible

" Install vim-plug plugin manager and plugins, when missing
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !echo "Installing vim-plug..." && curl --silent --fail --location --output ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

source ~/dotfiles/vim/plug.vim
source ~/dotfiles/vim/basic.vim
source ~/dotfiles/vim/rename_file.vim
source ~/dotfiles/vim/notes.vim
source ~/dotfiles/vim/ruby.vim
source ~/dotfiles/vim/vim_test.vim
source ~/dotfiles/vim/shifting_lines.vim
source ~/dotfiles/vim/ctrlp.vim
source ~/dotfiles/vim/ragtag.vim
source ~/dotfiles/vim/ag.vim
source ~/dotfiles/vim/cmdline_complete.vim
source ~/dotfiles/vim/es6.vim
source ~/dotfiles/vim/create_parent_dir.vim
source ~/dotfiles/vim/markdown.vim
source ~/dotfiles/vim/ulti_snips.vim
source ~/dotfiles/vim/fns.vim
source ~/dotfiles/vim/secret.vim
source ~/dotfiles/vim/golang.vim

if has("nvim") || has("neovim")
  source ~/dotfiles/vim/n.vim
endif

if has("gui_running")
  source ~/dotfiles/vim/gui.vim
endif

set exrc
set secure
set autowrite

colorscheme grb256

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

let g:hardtime_default_on = 1

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                               " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=%{&ff}]                         " file format
set statusline+=%y                              " filetype
set statusline+=%h                              " help file flag
set statusline+=%m                              " modified flag
set statusline+=%r                              " read only flag
set statusline+=\ %=                            " align left
set statusline+=Line:%l/%L[%p%%]                " line X of Y [percent of file]
set statusline+=\ Col:%c                        " current column
set statusline+=\ Buf:%n                        " Buffer number
set statusline+=\ [%b][0x%B]\                   " ASCII and byte code under cursor
