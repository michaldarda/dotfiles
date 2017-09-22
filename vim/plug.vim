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
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/loremipsum'
Plug 'tpope/vim-abolish'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'kopischke/vim-fetch'
Plug 'othree/html5.vim'
Plug 'vim-scripts/CmdlineComplete'
Plug 'janko-m/vim-test'
Plug 'kshenoy/vim-signature'
Plug 'deris/vim-shot-f'
Plug 'osyo-manga/vim-textobj-multiblock'
Plug 'rhysd/vim-textobj-anyblock'
Plug 'thinca/vim-textobj-between'
Plug 'dietsche/vim-lastplace'
Plug 'tpope/vim-projectionist'
Plug 'sirver/UltiSnips'
Plug 'plasticboy/vim-markdown'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'Olical/vim-enmasse' "edit files in quickfix window
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'Quramy/tsuquyomi'

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
Plug 'pmb-btw/xml-syntax'
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

Plug 'fcpg/vim-orbital'

" Plug 'w0rp/ale'
if has("nvim")
  Plug 'jodosha/vim-godebug'
endif

Plug 'takac/vim-hardtime'

Plug 'michaldarda/vim-code-dark'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'tpope/vim-dotenv'
Plug 'brooth/far.vim'
Plug 'godoctor/godoctor.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'

call plug#end()

filetype on
