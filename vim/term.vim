set t_Co=256 "256 color mode"
" " in case t_Co alone doesn't work, add this as well:
" " i.e. Force 256 colors harder
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set enc=utf-8
set term=screen-256color
let $TERM='screen-256color'

set background=dark
colorscheme default
