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
let g:hardtime_default_on = 1
set termguicolors
colorscheme codedark
