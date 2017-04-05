[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

export TERM=xterm-256color
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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
export PATH=$PATH:~/.npm/bin

export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/share/dotnet/:$PATH"

export PATH=$PATH:~/gopath/bin

export EDITOR=nvim

export TESTOPTS="-p"
