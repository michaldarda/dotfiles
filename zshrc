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

# get name of current ruby version
function prompt_ruby {
  echo $RUBY_VERSION
}

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

setopt cdablevars
setopt correct
setopt hist_ignore_space

bindkey -e

export KEYTIMEOUT=1

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
