set nocompatible
if has("gui_running")
  let $GVIM="true"
endif
set shell=$SHELL

source ~/dotfiles/vim/plug.vim
source ~/dotfiles/vim/basic.vim

nmap <leader>d :DistractionsToggle<CR>

source ~/dotfiles/vim/ctrlp.vim

source ~/dotfiles/vim/rename_file.vim

source ~/dotfiles/vim/notes.vim

let g:ragtag_global_maps = 1

nmap <leader>a :Ag ""<Left>

source ~/dotfiles/vim/clojure.vim

source ~/dotfiles/vim/slime.vim

"source ~/dotfiles/vim/hardtime.vim

source ~/dotfiles/vim/slimux.vim

"source ~/dotfiles/vim/syntastic.vim

source ~/dotfiles/vim/change_project.vim

source ~/dotfiles/vim/ruby.vim

cmap <c-x> <Plug>CmdlineCompleteForward

source ~/dotfiles/vim/vim_test.vim

source ~/dotfiles/vim/surround.vim

source ~/dotfiles/vim/ag_motion.vim

source ~/dotfiles/vim/praca.vim

"let g:SuperTabDefaultCompletionType = "context"

let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:dbname=api_test_tool'

let g:jsx_ext_required = 0

source ~/dotfiles/vim/shifting_lines.vim

if has("gui_running") && !has("neovim")
  source ~/dotfiles/vim/gui.vim
endif

" if !has("gui_running")
"   source ~/dotfiles/vim/term.vim
" endif

let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
