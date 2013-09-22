# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH:./bin:/usr/local/bin:/usr/local/sbin:/Users/michal/.sfs:/Users/michal/dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# my aliases
alias rl='. ~/.zshrc'

# rails, ruby
alias be='bundle exec'
alias b='bundle'

alias r='ruby'
alias rc='rails c'
alias rg='rails g'

alias migr='rake db:migrate'
alias prep="rake db:test:prepare"
alias seed="rake db:seed"

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
alias amend="git commit --amend -m"
alias undo="git reset HEAD~1"

# quick folder access
alias d="cd ~/dotfiles"
alias p="cd ~/play"
alias w="cd ~/work"
alias ex="cd ~/exercises"
alias s="subl ~/Dropbox/scratchpad"

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
