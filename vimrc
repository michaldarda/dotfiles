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
" source ~/dotfiles/vim/fzf.vim
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
let g:deoplete#enable_at_startup = 1
set wildmode=longest:full,list:full

set termguicolors
colorscheme jellybeans
set nonumber

" Map key to toggle opt
function MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

" Display-altering option toggles
MapToggle <leader>h hlsearch
MapToggle <leader>n number


if has('gui_vimr')
  set number
endif

colorscheme jellybeans
let g:rainbow_levels = [
    \{'ctermfg': 107, 'guifg': '#65c254'},
    \{'ctermfg': 110, 'guifg': '#8fbfdc'},
    \{'ctermfg': 103, 'guifg': '#8197bf'},
    \{'ctermfg': 183, 'guifg': '#c6b6ee'},
    \{'ctermfg': 167, 'guifg': '#cf6a4c'},
    \{'ctermfg': 215, 'guifg': '#ffb964'},
    \{'ctermfg': 188, 'guifg': '#e8e8d3'},
    \{'ctermfg': 244, 'guifg': '#888888'},
    \{'ctermfg': 107, 'guifg': '#65c254'},
    \{'ctermfg': 110, 'guifg': '#8fbfdc'},
    \{'ctermfg': 103, 'guifg': '#8197bf'},
    \{'ctermfg': 183, 'guifg': '#c6b6ee'},
    \{'ctermfg': 167, 'guifg': '#cf6a4c'},
    \{'ctermfg': 215, 'guifg': '#ffb964'},
    \{'ctermfg': 188, 'guifg': '#e8e8d3'},
    \{'ctermfg': 244, 'guifg': '#888888'},
    \{'ctermfg': 107, 'guifg': '#65c254'},
    \{'ctermfg': 110, 'guifg': '#8fbfdc'},
    \{'ctermfg': 103, 'guifg': '#8197bf'},
    \{'ctermfg': 183, 'guifg': '#c6b6ee'},
    \{'ctermfg': 167, 'guifg': '#cf6a4c'},
    \{'ctermfg': 215, 'guifg': '#ffb964'},
    \{'ctermfg': 188, 'guifg': '#e8e8d3'},
    \{'ctermfg': 244, 'guifg': '#888888'}]

set fillchars=""
hi vertsplit guifg=black guibg=black ctermbg=black ctermfg=black

let g:polyglot_disabled = ['slim']
au BufEnter *.slim :RainbowLevelsOn
au BufLeave *.slim :RainbowLevelsOff

map <leader>l :RainbowLevelsToggle<cr>
