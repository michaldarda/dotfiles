export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

autoload compinit
autoload promptinit
compinit
promptinit

setopt prompt_subst

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE="$HOME/.zsh_history"

# get the name of the branch we are on
function git_prompt_info() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# get name of current ruby version
function prompt_ruby {
  echo $RUBY_VERSION
}

autoload colors; colors
LS_COLORS="di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32";
LSCOLORS="ExGxFxDxCxDxDxhbhdacEc";

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

topcmds() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

function update_gem_ctags {
  bundle show --paths | xargs ctags -R
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:~/bin
export PATH=$PATH:~/dotfiles/scripts

#cabal
export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:~/.xmonad/bin

#gopath
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/gopath
export PATH=$PATH:~/gopath/bin
export PATH=$PATH:~/.npm/bin

source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-history-substring-search/zsh-history-substring-search.zsh

setopt cdablevars
setopt correct
setopt hist_ignore_space

bindkey -e

export KEYTIMEOUT=1

_not_inside_gvim() { [[ -z "$GVIM" ]] }
_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_gvim && _not_inside_tmux; then
    tat
  fi
}

export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

#export PATH=\$PATH:~/.cabal/bin:~/.xmonad/bin
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

NOKOGIRI_USE_SYSTEM_LIBRARIES=1

source ~/.zshenv
#source ~/dotfiles/docker.zsh

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

alias docker='sudo docker'

source ~/prompt.zsh
