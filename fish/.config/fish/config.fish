if type -q direnv
    direnv hook fish | source
end

if test -e ~/.work.fish
    . ~/.work.fish
end

# git
function gl
    git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit
end
function gpu
    git push -u origin (git symbolic-ref --short HEAD) || git push
end

abbr rl "source ~/.config/fish/config.fish"
abbr ll 'ls -lh'
abbr gpuf "git push -f"
abbr ga "git add"
abbr gd "git diff"
abbr gch "git checkout"
abbr gchf "git checkout --"
abbr gchb "git checkout -b"
abbr gb "git branch"
abbr gbd "git branch -D"
abbr gst "git status -sb"
abbr grh "git reset --hard"
abbr grs "git reset --soft"
abbr gr "git reset"
abbr grpo "git remote prune origin"
abbr gcl "git clone"
abbr gs "git stash"
abbr gsp "git stash pop"
abbr gsl "git stash list"
abbr gm "git merge"
abbr gc "git commit"
abbr gcm "git commit -m"
abbr gca "git commit -am"
abbr gam "git commit -a --amend"
abbr gun "git reset HEAD~1"
abbr gdl "git diff HEAD~1 HEAD"
abbr gds "git diff --staged"
abbr gcf "git clean -f"
abbr gbl "git blame"
abbr grbi "git rebase -i HEAD~5"
abbr grbi1 "git rebase -i HEAD~1"
abbr grbi2 "git rebase -i HEAD~2"
abbr grbi3 "git rebase -i HEAD~3"
abbr grbi4 "git rebase -i HEAD~4"
abbr grbi10 "git rebase -i HEAD~10"
abbr grbi20 "git rebase -i HEAD~20"
abbr grbi30 "git rebase -i HEAD~30"
abbr grbi40 "git rebase -i HEAD~40"
abbr gpb "git checkout --"
abbr gpr "git pull --rebase --stat"
# abbr grc "git rebase --continue"
abbr gra "git rebase --abort"
abbr gma "git merge --abort"

# quick folder access
abbr d "cd ~/dotfiles"
abbr w "cd ~/Code/work"
abbr ex "cd ~/Code/exercises"
abbr n "vim ~/Dropbox/notes"
abbr h "cd ~/"

# rails, ruby
abbr be 'bundle exec'
abbr b bundle
abbr my "mysql -u root"
abbr bim vim
abbr vi vim

abbr tst "tig status"

abbr ll 'exa -abghHliS --git'

abbr dc docker-compose
abbr dcr 'docker-compose run'
abbr dcu 'docker-compose up'
abbr dce 'docker-compose exec'
abbr dcps 'docker-compose ps'
abbr dctop 'docker-compose top'
abbr dcl 'docker-compose logs -f'
abbr csi chicken-csi

function fco -d "Fuzzy-find and checkout a branch"
    git branch --all | grep -v HEAD | string trim | sed 's/remotes\/origin\///g' | fzf | read -l result; and git checkout "$result"
end

set -Ux EDITOR vim

set -Ux PROJECTS_HOME $HOME/devel

function fish_right_prompt -d "Write out the right prompt"
end

set -x ERL_AFLAGS "-kernel shell_history enabled"

if type -q /opt/homebrew/bin/brew
    if status --is-interactive
        eval (/opt/homebrew/bin/brew shellenv)
    end
end

if type -q starship
    starship init fish | source
end

if type -q jump
    status --is-interactive; and source (jump shell fish | psub)
end

fish_add_path /Users/michal.darda/.local/bin/
/opt/homebrew/bin/mise activate fish | source

set -x RUBY_PACKAGE_MANAGER_INSTALL echo
set -x NODE_PACKAGE_MANAGER_INSTALL echo
set -x EDITOR nvim
set -x NODE_PACKAGE_MANAGER_INSTALL echo

zoxide init fish | source
