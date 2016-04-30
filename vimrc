set nocompatible
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

"let g:ag_prg="ag --vimgrep pry | awk '{split($1, t, \":\"); print t[1]\":\"t[2]\" \"$2\" \"$3\" \"$5\" \"$6\" \"$7;}' | uniq"

" Always use vertical diffs
set diffopt+=vertical

"highlight LineNr ctermfg=grey

set t_ut=
colorscheme macvim
