#!/bin/bash

# any future command that fails will exit the script
set -e

# Disable ssh prompt
echo "Disabling ssh prompt"
mkdir -p ~/.ssh
rm -rf ~/.ssh/config
touch ~/.ssh/config
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" >> ~/.ssh/config

# Make key private
echo "Make SSH key private"
chmod 400 ${cd_key}

# SSH into deploy server
echo "SSH into VM"
ssh ubuntu@${cd_ip} -i ${cd_key} 'bash' < ./deploy-scripts/update.sh
