export TERM=xterm-256color
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export EDITOR=vim

export PROMPT='%{$fg_bold[yellow]%}%c%{$reset_color%} $(gitprompt) $ '

export NOKOGIRI_USE_SYSTEM_LIBRARIES=1

export NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="/usr/local/bin:$PATH"
export PATH=/home/michal/.local/bin:$PATH

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

export PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/share/dotnet/:$PATH"

export PATH=$PATH:~/gopath/bin

export TESTOPTS="-p"
export PATH="$PATH:/usr/local/Cellar/node/7.9.0/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.rbenv/bin:$PATH"

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

export ERL_AFLAGS="-kernel shell_history enabled"
