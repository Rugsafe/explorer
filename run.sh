#!/bin/bash

nvm use v18.12.0; npm install;
tmux kill-session -t willchain-explorer || true;
tmux new -d -s willchain-explorer 'sh -c "npm run dev"';