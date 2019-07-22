bindkey -e

setopt inc_append_history
setopt share_history

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

function source_if_possible() { if [[ -r $1 ]]; then source $1; fi }

# external plugins
source_if_possible ~/git-prompt.zsh/git-prompt.zsh
source_if_possible ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source_if_possible /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source_if_possible ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/dotfiles/aliases.zsh

topcmds() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

update_gem_ctags() {
  bundle show --paths | xargs ctags -R
}

dme() {
  eval $(docker-machine env)
}

fco() {
  local tags branches target
  tags=$(
  git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
  git branch --all | grep -v HEAD             |
    sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
    sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
  (echo "$tags"; echo "$branches") |
    fzf-tmux -l30 -- --no-hscroll --ansi +m -d "\t" -n 2) || return
  git checkout $(echo "$target" | awk '{print $2}')
}

fancy-ctrl-z () {
if [[ $#BUFFER -eq 0 ]]; then
  BUFFER="fg"
  zle accept-line
else
  zle push-input
  zle clear-screen
fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ls colors
autoload -U colors && colors

# setopt auto_cd
# setopt multios
setopt prompt_subst

cdp() {
  file=$(cat ~/.projects | fzf)
  eval "cd $file"
}

[ -f ~/.work.zsh ] && source ~/.work.zsh

eval "$(jump shell zsh)"
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"

