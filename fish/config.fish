. ~/.config/fish/aliases.fish

set -gx fish_greeting ''
status --is-interactive; and source (jump shell fish | psub)
