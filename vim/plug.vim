filetype off

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'tpope/vim-ragtag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mkitt/tabline.vim'
Plug 'vim-scripts/loremipsum'
Plug 'tpope/vim-abolish'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
" Plug 'vim-scripts/TagHighlight'
Plug 'kopischke/vim-fetch'
Plug 'othree/html5.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'janko-m/vim-test'
Plug 'kshenoy/vim-signature'
Plug 'deris/vim-shot-f'
Plug 'osyo-manga/vim-textobj-multiblock'
Plug 'rhysd/vim-textobj-anyblock'
Plug 'thinca/vim-textobj-between'
Plug 'rhysd/vim-operator-surround'
Plug 'dietsche/vim-lastplace'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-projectionist'
Plug 'sirver/UltiSnips'
Plug 'plasticboy/vim-markdown'
Plug 'honza/vim-snippets'
Plug 'mattboehm/vim-unstack'
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'Olical/vim-enmasse' "edit files in quickfix window
Plug 'flazz/vim-colorschemes'
Plug 'jaywilliams/vim-vwilight'
Plug 'jacoborus/tender.vim'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'lifepillar/vim-mucomplete'

" ruby, rails
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'jgdavey/vim-blockle'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'gorkunov/smartpairs.vim', {'for': 'ruby'}

" javascript
Plug 'pangloss/vim-javascript'
Plug 'pmb-btw/xml-syntaxt'
" jsx
Plug 'mxw/vim-jsx'
" coffeescript
Plug 'kchmck/vim-coffee-script'

" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" nginx
Plug 'evanmiller/nginx-vim-syntax'
" go
Plug 'fatih/vim-go'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Plug 'OmniSharp/omnisharp-vim'

call plug#end()

filetype on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let test#ruby#runner = 'm'
