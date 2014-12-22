set nocompatible
let g:ruby_path = '/usr/bin/ruby'
let g:haddock_browser="/usr/bin/google-chrome"

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-ragtag'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate.git'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'greyblake/vim-preview' "Markdown
Plugin 'mkitt/tabline.vim'
Plugin 'vim-scripts/loremipsum'
Plugin 'tpope/vim-abolish'
Plugin 'godlygeek/tabular'
Plugin 'epeli/slimux'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'vim-scripts/TagHighlight'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bogado/file-line'
" ruby, rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'jgdavey/vim-blockle'
Plugin 'p0deje/vim-ruby-interpolation'
"scala
Plugin 'derekwyatt/vim-scala'
"javascript
Plugin 'pangloss/vim-javascript'
" coffeescript
Plugin 'kchmck/vim-coffee-script'
" rust
Plugin 'wting/rust.vim'
"go
Plugin 'fatih/vim-go'
"clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-leiningen'
" haskell
Plugin 'bitc/vim-hdevtools'
Plugin 'lukerandall/haskellmode-vim'
" nginx
Plugin 'evanmiller/nginx-vim-syntax'
" web, html5
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'vim-scripts/CmdlineComplete'
Plugin 'janko-m/vim-test'
if has("gui_running")
  " themes
  Plugin 'nanotech/jellybeans.vim'
  Plugin 'chriskempson/base16-vim'
endif
call vundle#end()            " required

filetype on
filetype indent on
filetype plugin on
syntax on

let mapleader=","

set number
set expandtab
set tabstop=2
set shiftwidth=2
set noswapfile
set laststatus=2
set statusline=%f         " Path to the file
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

set background=dark

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
nmap <leader>c :tabnew<CR>

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <Leader>fn :CtrlPFunky<Cr>

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

if has("gui_running")
  autocmd GUIEnter * set vb t_vb=

  set shell=/bin/zsh\ -i

  set cursorline

  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=r "remove right-hand scroll bar
  set guioptions-=L "remove left-hand scroll bar
  set guioptions-=e "console-like tabs in gvim
  set guioptions+=c

  let base16colorspace=256

  set background=dark
  colorscheme jellybeans

  " set background=light
  " colorscheme base16-atelierlakeside

  set guifont=Consolas\ 13
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

let NERDTreeChDirMode=0
let g:ctrlp_working_path_mode=0
nnoremap <leader>d :NERDTreeToggle<CR>

let g:notes_directories = ['~/Dropbox/notes']
let g:ragtag_global_maps = 1

nnoremap <leader>] :Preview<CR>

nmap <leader>a :Ag ""<Left>

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

let g:slimux_select_from_current_window = 1
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
else
  set clipboard=unnamed
endif

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list=1

" Highlight merge conflict markers
match Todo '\v^(\<|\=|\>){7}([^=].+)?$'

function! ChangeProject(target)
  execute "cd " . a:target
  edit .
endfunction

function! DirsCdPath()
  let paths = split(globpath(&cdpath, '*'), '\n')
  let result = []
  for path in paths
    if isdirectory(path)
      let result += [path]
    endif
  endfor
  return result
endfunction

function! DirInCdPathCompletion(ArgLead, CmdLine, CursorPos)
  let result = []
  for path in DirsCdPath()
    if path =~ a:ArgLead
      let result += [fnamemodify(path, ':t')]
    end
  endfor
  return join(result, "\n")
endfunction

command! -nargs=1 -complete=custom,DirInCdPathCompletion ChangeProject call ChangeProject(<q-args>)
cabbr p ChangeProject

function! OpenFileInCWD(filename)
  let l:current_working_dir = getcwd()
  let l:filepath = l:current_working_dir . '/' . a:filename
  if filereadable(l:filepath)
    execute "edit " . l:filepath
  else
    echom "File " . l:filepath . " doesn't exists"
  endif
endfunction

function! Rgemfile()
  call OpenFileInCWD("Gemfile")
endfunction

function! Rgemfilelock()
  call OpenFileInCWD("Gemfile.lock")
endfunction

command! Rgemfile call Rgemfile()
command! Rglock call Rgemfilelock()

cmap <c-x> <Plug>CmdlineCompleteForward

nmap <silent> <leader>q :TestNearest<CR>
nmap <silent> <leader>w :TestFile<CR>
nmap <silent> <leader>e :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
