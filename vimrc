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

source ~/dotfiles/vim/ultisnips.vim

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

let g:ycm_add_preview_to_completeopt = 1

let g:UltiSnipsExpandTrigger = '<C-@>'   " terminals send C-@ when C-Space is pressed.
let g:UltiSnipsJumpForwardTrigger = '<C-%>' " some key I do not use at all

let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories  = ["UltiSnips"]

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        call UltiSnips#JumpForwards()
        if g:ulti_jump_forwards_res == 0
           return ""  " nothing more to do
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
