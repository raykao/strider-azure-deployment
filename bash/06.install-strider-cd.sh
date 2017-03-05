#!/usr/bin/env bash

# install node
su strider<<'EOF'

cd ~/

git clone https://github.com/Strider-CD/strider.git && cd strider

npm install

EOF