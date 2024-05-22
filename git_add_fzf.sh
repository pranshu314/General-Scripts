#!/bin/bash

# Insted of "bat --diff" for fzf preview you can you "git diff" if you don't have bat
git status --short | sed s/\?\?\ //gI | sed s/A\ \ //gI | sed s/\ M\ //gI | sed s/M\ \ //gI | fzf -m --preview="bat --diff" | xargs git add
