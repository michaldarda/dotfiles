export TERM='xterm-256color'
export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

platform=`uname`
architecture=`uname -i`

export GRADLE_HOME=~/gradle/bin
export ANDROID_HOME=~/android-studio/sdk
export ECLIPSE_PATH=~/eclipse

export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools

export PATH=$GRADLE_HOME:$ECLIPSE_PATH::/usr/local/bin:$PATH:./bin:/usr/local/bin:/usr/local/sbin:/Users/michal/.sfs:/Users/michal/dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export CDPATH=$CDPATH:~/Code/work:~/Code/play:~/Code/examples:~/Code/exercises

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# aliases
topcmds() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

alias e='vim'
alias vi='vim'

# general
alias rl='. ~/.zshrc'
alias t='touch'
alias tf='tail -f'
alias md='mkdir'

# git
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
alias grpo="git remote prune origin"
alias gcl="git clone"
alias gs="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gm="git merge"
alias gc="git commit -m"
alias gca="git commit -am"
alias gam="git commit --amend -m"
alias gun="git reset HEAD~1"
alias gdl="git diff HEAD~1 HEAD"
alias gds="git diff --staged"
alias gcf="git clean -f"
alias gbl="git blame"
alias gpo="git push origin"
alias gpro="git pull --rebase origin"

# rails, ruby
alias pra="pry -r ./config/environment"
alias be='bundle exec'
alias b='bundle'
alias r='ruby'
alias rc='rails c'
alias rs='rails s'
alias rg='rails g'
alias rgm='rails g migration'
alias rdm='bundle exec rake db:migrate'
alias rdp='bundle exec rake db:migrate && bundle exec rake db:test:prepare'
alias rdtp="bundle exec rake db:test:prepare"
alias rds="bundle exec rake db:seed"
alias rdsd="bundle exec rake db:structure:dump && bundle exec rake db:schema:dump"

# quick folder access
alias d="cd ~/dotfiles"
alias p="cd ~/Code/play"
alias w="cd ~/Code/work"
alias ex="cd ~/Code/exercises"
alias n="vim ~/Dropbox/notes"
alias h="cd ~/"

# tmux scripts
alias bsplit="sh ~/dotfiles/scripts/tmux-base-split.sh"
alias rsplit="sh ~/dotfiles/scripts/tmux-rails-split.sh"
alias asplit="sh ~/dotfiles/scripts/tmux-android-split.sh"

export PATH="$HOME/.linuxbrew/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"

export GOPATH="/home/michal/go"
export PATH="$GOPATH/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
