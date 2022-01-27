#!/bin/sh

#Sessin Name
session="NPM"

# Start new session with our name
tmux new-session -d -s $session

#Name first window
tmux rename-window -t 0 'nvim'
tmux send-keys -t 'nvim' 'nvim .' C-m

tmux new-window -t $session:1 -n 'terminal'
tmux send-keys -t 'terminal' 'npm run dev' C-m

tmux attach-session -t $session:0
