#!/bin/sh
tmux split-window -h
tmux resize-pane -L 40

tmux send-keys -t 'nvim' 'nvim .' C-m
