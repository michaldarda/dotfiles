let g:python_host_skip_check=1
" let g:loaded_python3_provider=1

set nocompatible

source ~/dotfiles/vim/plug.vim
source ~/dotfiles/vim/basic.vim
source ~/dotfiles/vim/filetypes.vim
source ~/dotfiles/vim/rename_file.vim
source ~/dotfiles/vim/notes.vim
source ~/dotfiles/vim/ruby.vim
source ~/dotfiles/vim/vim_test.vim
source ~/dotfiles/vim/shifting_lines.vim
source ~/dotfiles/vim/ctrlp.vim
source ~/dotfiles/vim/ragtag.vim
source ~/dotfiles/vim/cmdline_complete.vim
source ~/dotfiles/vim/es6.vim
source ~/dotfiles/vim/create_parent_dir.vim
source ~/dotfiles/vim/markdown.vim
source ~/dotfiles/vim/ulti_snips.vim
source ~/dotfiles/vim/fns.vim
source ~/dotfiles/vim/secret.vim
source ~/dotfiles/vim/golang.vim
source ~/dotfiles/vim/iabbrev.vim
source ~/dotfiles/vim/ack.vim
source ~/dotfiles/vim/pretty_xml.vim
if has("nvim") || has("neovim")
  source ~/dotfiles/vim/n.vim
endif
if has("gui_running")
  source ~/dotfiles/vim/gui.vim
endif
source ~/dotfiles/vim/vimterm.vim
let g:hardtime_default_on = 0
set wildmode=longest:full,list:full

" Map key to toggle opt
function MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

" Display-altering option toggles
MapToggle <leader>h hlsearch
MapToggle <leader>n number

set fillchars=""
hi vertsplit guifg=black guibg=black ctermbg=black ctermfg=black

colorscheme grb256
let g:spacegray_low_contrast = 1

hi Normal ctermbg=NONE

set clipboard=unnamedplus " use system clipboard
