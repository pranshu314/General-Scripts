#!/bin/bash

#SESSION=$(tmux list-sessions -F \#S | gum filter --placeholder "Pick session...")
SESSION=$(tmux list-sessions -F \#S | fzf)
tmux switch-client -t $SESSION || tmux attach -t $SESSION
