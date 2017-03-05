#!/usr/bin/env bash

touch /tmp/strider-test.txt

su strider<<'EOF'

cd ~/

touch test.txt

git clone https://github.com/Strider-CD/strider.git && cd strider

npm install

EOF