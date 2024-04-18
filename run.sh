#!/bin/bash


source ~/.bashrc
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

node -v
nvm use v18.12.0; npm install;
tmux kill-session -t willchain-explorer || true;
tmux new -d -s willchain-explorer 'sh -c "nvm use v18.12.0; npm install; npm run dev"';