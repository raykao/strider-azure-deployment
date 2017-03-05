#!/usr/bin/env bash

# allow mongo from localhost only
ufw allow from 127.0.0.1 to 127.0.0.1 port 27017 proto tcp

# allow node/strider default
ufw allow 3000

ufw allow ssh

echo "y" | ufw enable
