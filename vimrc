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
" source ~/dotfiles/vim/neomake.vim
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

let g:ale_sign_column_always = 1
" let g:ale_open_list = 1
" " Set this if you want to.
" " This can be useful if you are combining ALE with
" " some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 1


let g:tsuquyomi_completion_detail = 1

" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"

colorscheme grb256
