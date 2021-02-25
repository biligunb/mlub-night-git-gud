#!/bin/bash

# any future command that fails will exit the script
set -e

# Git pull the project
echo "Git pull"
git reset --hard
git checkout master
git pull origin --prune

# # source the nvm file
echo "Prepare NVM (node)"
source ~/.nvm/nvm.sh
node --version

# # PM2
echo "Check pm2"
pm2 status
pm2 delete all

# echo "Running npm install front-end"
npm install
cp ~/socket.env .env && cat .env
pm2 start ecosystem.config.js

echo "Check pm2 status"
pm2 list
