#!/usr/bin/env bash

sudo -i 

env PATH=$PATH:/usr/local/lib/node-v6.10.0-linux-x64/bin pm2 startup systemd -u strider --hp /home/strider

shutdown -r -t now
