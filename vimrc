set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-ragtag'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate.git'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/timl'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'wting/rust.vim'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'greyblake/vim-preview' "Markdown
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'mkitt/tabline.vim'
Plugin 'vim-scripts/loremipsum'
Plugin 'tpope/vim-abolish'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
if has("gui_running")
  Plugin 'chriskempson/base16-vim'
  Plugin 'bling/vim-airline'
endif

call vundle#end()            " required

filetype on
filetype indent on
filetype plugin on
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set number
set laststatus=2
set backspace=indent,eol,start
set autoindent
set history=50
set ruler
set showcmd

set incsearch
set hlsearch
set ignorecase
set smartcase

set wildignore+=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.jpeg,*.otf,*.svg,*.ttf,*.eot,*.woff
set wildignore+=/tmp,*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*

set showmatch
set nowrap
set smarttab
set autoread

runtime macros/matchit.vim

autocmd FileType c,cpp,java,php,ruby,go,scala,python,javascript,coffee autocmd BufWritePre <buffer> :%s/\s\+$//e

" Disable splash
set shortmess=aTItoO

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

match ErrorMsg '\s\+$'

set background=dark
set clipboard=unnamedplus

" dont add the comments
set formatoptions-=or

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1
set smartindent
set showtabline=2

set wildmode=longest,list,full
set wildmenu

" Markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md,README setf markdown

" normally I always use 2 spaces to indent, exceptions here
autocmd FileType java,go,c,python set tabstop=4|set shiftwidth=4|set expandtab

set t_Co=256 "256 color mode"

"set spell spelllang=en_us
"
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nmap <leader>h :nohlsearch<cr>

nmap <leader>v :tabe ~/.vimrc<CR>

nmap <leader>n :Note<Space>

nmap <leader>t :CtrlPMixed<CR>
nmap <Leader>p :CtrlPCmdPalette<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>c :tabnew<CR>
nmap <Leader>fu :CtrlPFunky<Cr>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

if has("gui_running")
  set shell=/bin/zsh\ -i

  set cursorline

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#show_buffers = 0

  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions+=c

  let base16colorspace=256
  set background=dark
  colorscheme base16-chalk

  set guifont=DejaVu\ Sans\ Mono\ 11
  set lines=999 columns=999
end

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>r :call RenameFile()<cr>

" Clear the search buffer when hitting return
" function! MapCR()
"   nnoremap <cr> :nohlsearch<cr>
" endfunction
" call MapCR()

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_working_path_mode = 'ra'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" pretty json
com! PrettyJSON %!python -m json.tool
nnoremap <leader>d :NERDTreeToggle<CR>

let g:notes_directories = ['~/Dropbox/notes']

let g:ragtag_global_maps = 1

nnoremap <leader>] :Preview<CR>

nmap <leader>a :Ag ""<Left>
nmap <leader>A :Ag <C-r><C-w><CR>

let tlist_clojure_settings = 'lisp;f:function'
let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1
