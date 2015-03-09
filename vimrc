set nocompatible
set shell=$SHELL
let g:ruby_path = '/usr/bin/ruby'
let g:haddock_browser="/usr/bin/google-chrome"

filetype off

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-ragtag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'rking/ag.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'greyblake/vim-preview' "Markdown
Plug 'mkitt/tabline.vim'
Plug 'vim-scripts/loremipsum'
Plug 'tpope/vim-abolish'
Plug 'godlygeek/tabular'
Plug 'epeli/slimux'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'gorkunov/smartpairs.vim'
Plug 'vim-scripts/TagHighlight'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
" Plug 'Shougo/vimshell.vim'
" Plug 'Shougo/vimproc.vim'
Plug 'scrooloose/syntastic'
Plug 'bogado/file-line'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'janko-m/vim-test'
Plug 'nicwest/QQ.vim'
Plug 'kshenoy/vim-signature'
Plug 'deris/vim-shot-f'
Plug 'osyo-manga/vim-textobj-multiblock'
Plug 'rhysd/vim-textobj-anyblock'
Plug 'thinca/vim-textobj-between'
Plug 'rhysd/vim-operator-surround'
Plug 'dietsche/vim-lastplace'
" ruby, rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'jgdavey/vim-blockle'
Plug 'p0deje/vim-ruby-interpolation'
"scala
" Plug 'derekwyatt/vim-scala'
"javascript
Plug 'pangloss/vim-javascript'
" coffeescript
Plug 'kchmck/vim-coffee-script'
" nginx
Plug 'evanmiller/nginx-vim-syntax'
"go
Plug 'fatih/vim-go'
"clojure
" Plug 'tpope/vim-fireplace'
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-clojure-highlight'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
" Plug 'tpope/vim-leiningen'
" haskell
" Plug 'bitc/vim-hdevtools'
" Plug 'lukerandall/haskellmode-vim'
"  elixir
" Plug 'elixir-lang/vim-elixir'
" jsx
Plug 'mxw/vim-jsx'
" color schemes, etc
Plug 'godlygeek/csapprox'
Plug 'vim-scripts/dbext.vim'
Plug 'tpope/vim-vinegar'
" Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'chazy/cscope_maps'
Plug 'wakatime/vim-wakatime'
Plug 'pangloss/vim-javascript'
call plug#end()

filetype on
filetype indent on
filetype plugin on
syntax on

let mapleader=","
"
set number
set relativenumber
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
" " in case t_Co alone doesn't work, add this as well:
" " i.e. Force 256 colors harder
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set enc=utf-8
set term=screen-256color
let $TERM='screen-256color'

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

let base16colorspace=256
set cursorline

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

  set background=dark

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

let g:ctrlp_working_path_mode=0

let g:notes_directories = ['~/Dropbox/notes']
let g:ragtag_global_maps = 1

nnoremap <leader>m :Preview<CR>

nmap <leader>a :Ag ""<Left>
nmap <leader>cs :cs find s<Space>
nmap <leader>cs :cg find s<Space>
nmap <leader>cs :cc find s<Space>

let tlist_clojure_settings = 'lisp;f:function'
let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_paste_file = "$HOME/.slime_paste"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-x>"
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
  execute "tabe"
  execute "lcd " . a:target
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

function! Rgspec()
  execute "edit **/*.gemspec"
endfunction

noremap s <NOP>

command! Rgemfile call Rgemfile()
command! Rglock call Rgemfilelock()
command! Rgspec call Rgspec()

cmap <c-x> <Plug>CmdlineCompleteForward

nmap <silent> <leader>q :TestNearest<CR>
nmap <silent> <leader>w :TestFile<CR>
nmap <silent> <leader>e :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

" operator mappings
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)

" delete or replace most inner surround
" if you use vim-textobj-multiblock
nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-multiblock-a)
nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-multiblock-a)

" if you use vim-textobj-anyblock
nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)

" if you use vim-textobj-between
nmap <silent>sdb <Plug>(operator-surround-delete)<Plug>(textobj-between-a)
nmap <silent>srb <Plug>(operator-surround-replace)<Plug>(textobj-between-a)

nnoremap <silent> \a :set opfunc=<SID>AgMotion<CR>g@
xnoremap <silent> \a :<C-U>call <SID>AgMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
  if a:type ==# 'v'
    silent execute "normal! `<" . a:type . "`>y"
  elseif a:type ==# 'char'
    silent execute "normal! `[v`]y"
  endif
endfunction

function! s:AgMotion(type) abort
  let reg_save = @@

  call s:CopyMotionForType(a:type)

  execute "normal! :Ag " . shellescape(@@) . "\<cr>"

  let @@ = reg_save
endfunction

hi Visual term=reverse cterm=reverse guibg=White
hi Search term=reverse cterm=reverse guibg=White
colorscheme github
set background=light

set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:dbname=api_test_tool'

inoremap jj <Esc>

nnoremap <space> :buffers<CR>:buffer<Space>

let g:jsx_ext_required = 0

set nolazyredraw

" Normal mode
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
" Visual mode
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
