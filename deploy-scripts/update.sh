#!/bin/bash

# any future command that fails will exit the script
set -e

# Git pull the project
echo "Git pull"
cd ~/ci-cd-demo
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
pm2 stop ci-cd-demo

echo "NPM install, clean & build"
npm install
npm run clean
npm run build

echo "Run pm2"
pm2 restart ci-cd-demo

echo "Check pm2 status"
pm2 list
