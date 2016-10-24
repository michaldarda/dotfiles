filetype indent on
filetype plugin on
syntax on

set shell=$SHELL

let mapleader=","

set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set laststatus=2

set statusline=%F         " Path to the file
set statusline+=%2*\ %y\  " FileType
set statusline+=\ "
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=%=        " Switch to the right side
set statusline+=%{fugitive#statusline()}
set backspace=indent,eol,start
set autoindent
set history=50
set ruler
set showcmd

set incsearch
set hlsearch
set ignorecase
set smartcase

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

" dont add the comments
set formatoptions-=or

" removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1
set smartindent
set showtabline=2

set title
nnoremap ; :
set cursorline

" normally I always use 2 spaces to indent, exceptions here
autocmd FileType java,go,c,python set tabstop=4|set shiftwidth=4|set expandtab

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

inoremap jj <Esc>
nnoremap <space> :buffers<CR>:buffer<Space>

" hi Visual term=reverse cterm=reverse guibg=White
" hi Search term=reverse cterm=reverse guibg=White

nmap <leader>h :nohlsearch<cr>
nmap <leader>v :tabe ~/.vimrc<CR>
nmap <leader>c :tabnew<CR>

com! PrettyJSON %!python -m json.tool

match Todo '\v^(\<|\=|\>){7}([^=].+)?$'

set ttyfast
set omnifunc=syntaxcomplete#Complete
set mouse=a
set clipboard=unnamed
set diffopt+=vertical
set number
set termguicolors
