#!/usr/bin/env bash

# install node
sudo -i

cd /usr/local/lib

wget https://nodejs.org/dist/v6.10.0/node-v6.10.0-linux-x64.tar.xz

tar -xf $(ls | grep node)

rm *.xz

sudo ln -s "$(pwd)/$(ls | grep node)/bin/node" /usr/bin/node

sudo ln -s "$(pwd)/$(ls | grep node)/bin/npm" /usr/bin/npm

# used to daemonize node services
npm install -g pm2

sudo ln -s "$(pwd)/$(ls | grep node)/bin/pm2" /usr/bin/pm2