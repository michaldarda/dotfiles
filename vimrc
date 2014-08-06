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
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-easytags'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate.git'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/timl'
Plugin 'endel/vim-github-colorscheme'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'derekwyatt/vim-scala'
Plugin 'burnettk/vim-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
"Plugin 'fatih/vim-go'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'majutsushi/tagbar.git'
Plugin 'wting/rust.vim'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ck3g/vim-change-hash-syntax'

call vundle#end()            " required

filetype plugin indent on
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set number
set laststatus=2
" set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
" let g:airline#extensions#tabline#enabled = 1
set backspace=indent,eol,start
set autoindent
set history=50
set ruler
set showcmd

set incsearch
set hlsearch
set ignorecase
set smartcase

set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.jpeg,*.otf,*.svg,*.ttf,*.eot,*.woff

" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

imap <c-e> <c-o>$
imap <c-a> <c-o>^

nmap <leader>h :nohlsearch<cr>
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

map <Leader>f :w<cr>:call RunCurrentTest()<CR>
map <Leader>g :w<cr>:call RunCurrentLineInTest()<CR>

match ErrorMsg '\s\+$'

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>

runtime macros/matchit.vim

autocmd FileType c,cpp,java,php,ruby,go,scala,python,javascript,coffee autocmd BufWritePre <buffer> :%s/\s\+$//e

set showmatch
set nowrap
set smarttab
set autoread

" Disable splash
set shortmess=aTItoO

nmap <leader>v :e ~/.vimrc<CR>
autocmd FileType eruby setl indentexpr=XmlIndentGet(v:lnum,1)

nmap <leader>t :CtrlPMixed<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>c :tabnew<CR>

" Clear the search buffer when hitting return
" function! MapCR()
"   nnoremap <cr> :nohlsearch<cr>
" endfunction
" call MapCR()

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" normally I always use 2 spaces, exceptions here
autocmd FileType java,go,c,python set tabstop=4|set shiftwidth=4|set expandtab

" pretty json
com! PrettyJSON %!python -m json.tool

set t_Co=256 "256 color mode"

nnoremap <leader>d :NERDTreeToggle<CR>
set background=dark

let g:notes_directories = ['~/Dropbox']
"set spell spelllang=en_us

set clipboard=unnamedplus

" dont add the comments
set formatoptions-=or

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

let g:ragtag_global_maps = 1

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

nmap <leader>a :tab split<CR>:Ag ""<Left>
nmap <leader>A :tab split<CR>:Ag <C-r><C-w><CR>

set cursorline
