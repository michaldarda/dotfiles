export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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

export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

alias docker='sudo docker'

export PURE_PROMPT_SYMBOL=""
source ~/.antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/
plugins=()

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme minimal

antigen apply

source ~/.zshenv

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

