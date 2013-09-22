# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:./bin:/Users/michal/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/Users/michal/.sfs:/Users/michal/dotfiles/bin:/Users/michal/.rvm/gems/ruby-1.9.3-p448/bin:/Users/michal/.rvm/gems/ruby-1.9.3-p448@global/bin:/Users/michal/.rvm/rubies/ruby-1.9.3-p448/bin:/Users/michal/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# my aliases
alias rl='. ~/.zshrc'

# rails, ruby
alias be='bundle exec'
alias b='bundle'
alias bu='bundle update'

alias rc='rails c'
alias rg='rails g'

alias migrate='rake db:migrate'
alias prepare="rake db:test:prepare"
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
alias gprune="git remote prune origin"
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
alias p="cd ~/Dropbox/play"
alias w="cd ~/Dropbox/work"
alias ex="cd ~/Dropbox/exercises"
alias s="e ~/Dropbox/scratchpad"

# ch ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
