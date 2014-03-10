#!/bin/bash
SESSION=$USER

tmux -2 new-session -d -s $SESSION

# Setup a window for programming
# big vim window
# and small shell at the bottom
tmux new-window -t $SESSION:1 -n 'Programming'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "vim" C-m
tmux resize-pane -D 10
tmux select-pane -t 1

# Attach to session
tmux -2 attach-session -t $SESSION
