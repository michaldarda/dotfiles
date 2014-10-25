export TERM='xterm-256color'
export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH:./bin:/usr/local/bin:/usr/local/sbin:/Users/michal/.sfs:/Users/michal/dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

topcmds() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

function update_gem_ctags {
  bundle show --paths | xargs ctags -R
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:~/bin

#gopath
export PATH=$PATH:/usr/local/go/bin

source ~/dotfiles/zsh_home
source ~/dotfiles/zsh_work

