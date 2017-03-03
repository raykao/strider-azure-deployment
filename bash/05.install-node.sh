#!/usr/bin/env bash

# install node
sudo -i

su strider

cd ~/

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

touch .bash_profile
echo "source ~/.bashrc" >> ~/.bash_profile

source ~/.bash_profile

nvm install 6.10