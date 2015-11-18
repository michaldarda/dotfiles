filetype off

call plug#begin('~/.vim/plugged')
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
Plug 'rking/ag.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mkitt/tabline.vim'
Plug 'vim-scripts/loremipsum'
Plug 'tpope/vim-abolish'
Plug 'godlygeek/tabular'
Plug 'epeli/slimux'
Plug 'tpope/vim-repeat'
Plug 'gorkunov/smartpairs.vim', {'for': 'ruby'}
Plug 'vim-scripts/TagHighlight'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/syntastic'
Plug 'kopischke/vim-fetch'
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
"javascript
Plug 'pangloss/vim-javascript'
" coffeescript
Plug 'kchmck/vim-coffee-script'
" nginx
Plug 'evanmiller/nginx-vim-syntax'
"go
Plug 'fatih/vim-go'
" jsx
Plug 'mxw/vim-jsx'
Plug 'vim-scripts/dbext.vim'
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'DanielFGray/DistractionFree.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'zhubert/vim-ruby-fmt', {'for': 'ruby'}
Plug 'tpope/vim-projectionist'
Plug 'gabesoft/vim-ags'
Plug 'juvenn/mustache.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'ervandew/supertab'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-runner'
call plug#end()

filetype on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
