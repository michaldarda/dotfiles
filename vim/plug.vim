" Install vim-plug plugin manager and plugins, when missing
" https://github.com/junegunn/vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !echo "Installing vim-plug..." && curl --silent --fail --location --output ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

filetype off

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-operator-user'
Plug 'tpope/vim-ragtag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'xolox/vim-misc'
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
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-go'
Plug 'vimwiki/vimwiki'
Plug 'mileszs/ack.vim'
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-dispatch'
Plug 'w0rp/ale'
Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
Plug 'Shougo/denite.nvim'

" ruby, rails
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'jgdavey/vim-blockle'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'gorkunov/smartpairs.vim', {'for': 'ruby'}

Plug 'fcpg/vim-orbital'

Plug 'quanganhdo/grb256'
Plug 'nanotech/jellybeans.vim'

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wvffle/vimterm'
" Plug 'onemanstartup/vim-slim'

Plug 'thiagoalessio/rainbow_levels.vim'

call plug#end()

filetype on

" hi VertSplit guibg=bg guifg=bg
