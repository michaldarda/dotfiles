alias cdg="cd $GOPATH"

# aliases
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
alias gpu='[[ -z $(git config "branch.$(git symbolic-ref --short HEAD).merge") ]] && git push -u origin $(git symbolic-ref --short HEAD) || git push'
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
alias gcm="git commit -m"
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
alias gpr="git pull --rebase --stat"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gma="git merge --abort"

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
alias bim='vim'
alias vi='vim'

alias tmux="tmux -2"

alias tst="tig status"

alias impd='impostor firewall | bash - & impostor server & impostor tray &'

case `uname` in
  Darwin)
    # commands for OS X go here
  ;;
  Linux)
    # commands for Linux go here
    alias open='xdg-open'
    alias pac='pacman'
    alias 'sudo=sudo '
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac

alias ll='exa -abghHliS --git'

alias dc='docker-compose'
alias dcr='docker-compose run'
alias dcu='docker-compose up'
alias dce='docker-compose exec'
alias dcps='docker-compose ps'
alias dctop='docker-compose top'
alias dcl='docker-compose logs -f'
alias csi='chicken-csi'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
