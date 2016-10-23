status --is-interactive; and . (rbenv init -|psub)

alias e 'vim'
alias vi 'vim'
alias tlf 'tail -f'
alias rl '. ~/.zshrc'
alias t 'touch'
alias tf 'tail -f'
alias md 'mkdir'
alias pu 'pushd'
alias po 'popd'
alias ll 'ls -lh'
alias gl "git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit"
alias gpu "git push"
alias gpuf "git push -f"
alias ga "git add"
alias gd "git diff"
alias gch "git checkout"
alias gchf "git checkout --"
alias gchb "git checkout -b"
alias gb "git branch"
alias gbd "git branch -D"
alias gst "git status -sb"
alias grh "git reset --hard"
alias grs "git reset --soft"
alias gr "git reset"
alias grpo "git remote prune origin"
alias gcl "git clone"
alias gs "git stash"
alias gsp "git stash pop"
alias gsl "git stash list"
alias gm "git merge"
alias gc "git commit"
alias gcm "git commit -m"
alias gca "git commit -am"
alias gam "git commit -a --amend"
alias gun "git reset HEAD~1"
alias gdl "git diff HEAD~1 HEAD"
alias gds "git diff --staged"
alias gcf "git clean -f"
alias gbl "git blame"
alias grbi "git rebase -i HEAD~5"
alias grbi1 "git rebase -i HEAD~1"
alias grbi2"git rebase -i HEAD~2"
alias grbi3 "git rebase -i HEAD~3"
alias grbi4 "git rebase -i HEAD~4"
alias grbi10 "git rebase -i HEAD~10"
alias grbi20 "git rebase -i HEAD~20"
alias grbi30 "git rebase -i HEAD~30"
alias grbi40 "git rebase -i HEAD~40"
alias gpb "git checkout --"
alias gpr "git pull --rebase --stat"
alias d "cd ~/dotfiles"
alias w "cd ~/Code/work"
alias ex "cd ~/Code/exercises"
alias n "vim ~/Dropbox/notes"
alias h "cd ~/"
alias be 'bundle exec'
alias b 'bundle'
alias my "mysql -u root"
alias bim 'vim'
alias vi "vim"

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate 'D'
set __fish_git_prompt_char_stagedstate 'S'
set __fish_git_prompt_char_untrackedfiles 'U'
set __fish_git_prompt_char_stashstate 'ST'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

set CDPATH "$CDPATH:~/Code/work:~/Code/play:~/Code/examples:~/Code/exercises"
