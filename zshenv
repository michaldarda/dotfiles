# aliases
alias e='vim'
alias vi='vim'
#alias gvim='0echo "Use vim instead"'

# general
alias rl='. ~/.zshrc && . ~/.zshenv'
alias t='touch'
alias tf='tail -f'
alias md='mkdir'

# git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
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

# rails, ruby
alias be='bundle exec'
alias b='bundle'
alias rc='rails c'
alias rs='rails s'
alias rg='rails g'
alias rgm='rails g migration'

# quick folder access
alias d="cd ~/dotfiles"
alias p="cd ~/Code/play"
alias w="cd ~/Code/work"
alias ex="cd ~/Code/exercises"
alias n="vim ~/Dropbox/notes"
alias h="cd ~/"