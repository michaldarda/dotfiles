# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH:./bin:/usr/local/bin:/usr/local/sbin:/Users/michal/.sfs:/Users/michal/dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias e='open -a Emacs'

# general aliases
alias rl='. ~/.zshrc'
alias t='touch'
alias tlf='tail -f'

# git aliases
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gpr="git pull --rebase"
alias gpu="git push"
alias ga="git add"
alias gd="git diff"
alias gch="git checkout"
alias gchf="git checkout --"
alias gchb="git checkout -b"
alias gb="git branch"
alias gbd="git branch -D"
alias gst="git status -sb"
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias grh="git reset --hard"
alias grs="git reset --soft"
alias gr="git reset"
alias gpru="git remote prune origin"
alias gcl="git clone"
alias gs="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gm="git merge"
alias gc="git commit -m"
alias gca="git commit -am"
alias amd="git commit --amend -m"
alias und="git reset HEAD~1"
alias gdl="git diff HEAD~1 HEAD"
alias gds="git diff --staged"

# rails, ruby
alias be='bundle exec'
alias b='bundle'
alias r='ruby'
alias rc='rails c'
alias rg='rails g'
alias mgr='rake db:migrate'
alias prp="rake db:test:prepare"
alias sd="rake db:seed"

# quick folder access
alias d="cd ~/dotfiles"
alias p="cd ~/Code/play"
alias w="cd ~/Code/work"
alias ex="cd ~/Code/exercises"
alias s="open -a Emacs ~/Dropbox/scratchpad"
