let g:ruby_path = '/usr/bin/ruby'
let g:haddock_browser="/usr/bin/google-chrome"

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
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
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
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
Plugin 'benekastah/neomake'
Plugin 'jpalardy/vim-slime'
Plugin 'takac/vim-hardtime'
Plugin 'tpope/vim-repeat'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-unimpaired'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'jgdavey/vim-blockle'
Plugin 'bitc/vim-hdevtools'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'vim-scripts/TagHighlight'

Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'yuku-t/unite-git'

if has("gui_running")
  Plugin 'nanotech/jellybeans.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'bling/vim-airline'
endif
call vundle#end()            " required

filetype on
filetype indent on
filetype plugin on
syntax on

let mapleader=","

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
autocmd FileType ruby autocmd BufWritePre <buffer> :Neomake

" Disable splash
set shortmess=aTItoO

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set background=dark
set clipboard=unnamedplus " Enable copy pasting

" dont add the comments
set formatoptions-=or

" removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1
set smartindent
set showtabline=2

set wildmode=longest,list,full
set wildmenu

set title
nnoremap ; :

" Markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md,README setf markdown

" normally I always use 2 spaces to indent, exceptions here
autocmd FileType java,go,c,python set tabstop=4|set shiftwidth=4|set expandtab

set t_Co=256 "256 color mode"

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nmap <leader>h :nohlsearch<cr>

nmap <leader>v :tabe ~/.vimrc<CR>

nmap <leader>n :Note<Space>

nnoremap <leader>t :<C-u>Unite -start-insert -auto-preview git_cached<CR>
nmap <leader>c :tabnew<CR>

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

  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=r "remove right-hand scroll bar
  set guioptions-=L "remove left-hand scroll bar
  set guioptions+=c

  let base16colorspace=256
  set background=dark
  colorscheme jellybeans

  set guifont=Consolas\ 12
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

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_paste_file = "$HOME/.slime_paste"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" let g:hardtime_default_on = 1
" let g:hardtime_showmsg = 1
" let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]

call unite#filters#matcher_default#use(['matcher_fuzzy'])
