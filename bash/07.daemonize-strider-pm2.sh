#!/usr/bin/env bash

su strider<<'EOF'

cd ~/strider

pm2 start bin/strider

exit

EOF

sudo env PATH=$PATH:/usr/local/lib/node-v6.10.0-linux-x64/bin pm2 startup systemd -u strider --hp /home/strider

pm2 save