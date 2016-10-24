export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

topcmds() {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

function update_gem_ctags {
  bundle show --paths | xargs ctags -R
}

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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

source ~/.zshenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

setopt inc_append_history
setopt share_history

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:git*' formats ' %b'
zstyle ':vcs_info:git*' actionformats ' %b|%a'

dme() {
  eval $(docker-machine env)
}

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/share/dotnet/:$PATH"

PROMPT='%2~$vcs_info_msg_0_ $ '
