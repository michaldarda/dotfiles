# aliases
alias e='vim'
alias vi='vim'
alias tlf='tail -f'

# general
alias rl='. ~/.zshrc'
alias t='touch'
alias tf='tail -f'
alias md='mkdir'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# cds
alias ..='cd ../..'
alias -- -='cd -'

# ll
alias ll='ls -lh'

# git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit"
alias gpr="git pull --rebase --stat"
alias gpu="git push"
alias gpuf="git push -f"
alias ga="git add"
alias gd="git diff"
alias gch="git checkout"
alias gchf="git checkout --"
alias gchb="git checkout -b"
alias gb="git branch"
alias gbd="git branch -D"
alias gst="git status -sb"
alias grh="git reset --hard"
alias grs="git reset --soft"
alias gr="git reset"
alias grpo="git remote prune origin"
alias gcl="git clone"
alias gs="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gm="git merge"
alias gc="git commit"
alias gca="git commit -am"
alias gam="git commit -a --amend"
alias gun="git reset HEAD~1"
alias gdl="git diff HEAD~1 HEAD"
alias gds="git diff --staged"
alias gcf="git clean -f"
alias gbl="git blame"
alias grbi="git rebase -i HEAD~5"
alias grbi1="git rebase -i HEAD~1"
alias grbi2"git rebase -i HEAD~2"
alias grbi3="git rebase -i HEAD~3"
alias grbi4="git rebase -i HEAD~4"
alias grbi10="git rebase -i HEAD~10"
alias grbi20="git rebase -i HEAD~20"
alias grbi30="git rebase -i HEAD~30"
alias grbi40="git rebase -i HEAD~40"
alias gpb="git checkout --"


# quick folder access
alias d="cd ~/dotfiles"
alias w="cd ~/Code/work"
alias ex="cd ~/Code/exercises"
alias n="vim ~/Dropbox/notes"
alias h="cd ~/"

# rails, ruby
alias be='bundle exec'
alias b='bundle'
alias my="mysql -u root"
alias mvim="vim -u ~/.vimrcmin"
alias bim='vim'

function prake() {
  RAILS_ENV=production APP_ENV=production bundle exec rake $@
}

function trake() {
  RAILS_ENV=test APP_ENV=test bundle exec rake $@
}

# mysql
function myload {
  mysql -u root -e "drop database $1" -T
  mysql -u root -e "create database $1" -T
  pv $2 | mysql -u root $1
}

# chruby
source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh

# other files
source ~/dotfiles/zsh_home
source ~/dotfiles/zsh_pacman
[[ -f ~/zsh_cubiware ]] && source ~/zsh_cubiware
[[ -f ~/.cubiware.zsh ]] && source ~/.cubiware.zsh

export EDITOR=vim

chruby ruby-2.1

alias 19="chruby 1.9"
alias 21="chruby 2.1"
alias 22="chruby 2.2.3"

export NVIM_TUI_ENABLE_TRUE_COLOR=1
