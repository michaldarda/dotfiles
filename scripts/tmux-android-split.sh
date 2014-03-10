#!/bin/bash
SESSION=$USER

tmux -2 new-session -d -s $SESSION

# Basic split for Android project -
# big vim window and two windows for shell
# and adb logcat
tmux new-window -t $SESSION:1 -n 'Android project'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "vim" C-m
tmux resize-pane -D 10
tmux select-pane -t 1
tmux split-window -h
tmux select-pane -t 2
tmux send-keys "adb logcat" C-m
tmux select-pane -t 1

# Attach to session
tmux -2 attach-session -t $SESSION
