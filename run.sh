#!/bin/bash


source ~/.bashrc
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

node -v
nvm use v18.12.0; npm install --force;
tmux kill-session -t rugsafe-explorer || true;
tmux new -d -s rugsafe-explorer 'sh -c "npm build; cd dist/; python -m http.server 5173;"';