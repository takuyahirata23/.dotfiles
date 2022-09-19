#!/usr/bin/env bash

#get absolute path
session=$(find ~/personal ~/work ~/.dotfiles -mindepth 1 -maxdepth 1 -type d | fzf)

# get folder name (replace . with _ as session name cannot have .)
session_name=$(basename "$session" | tr . _)

if tmux info &> /dev/null; then
  if tmux has-session -t 0 2> /dev/null; then 
    tmux rename-session -t 0 "$session_name"
  elif ! tmux has-session -t "$session_name" 2> /dev/null; then 
    tmux new-session -s "$session_name" -c "$session" -d
    tmux switch-client -t "$session_name"
  fi
else 
  tmux new-session -s "$session_name" -c "$session" -d
  tmux attach-session -t $session_name:0
fi




