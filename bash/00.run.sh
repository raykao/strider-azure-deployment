#!/usr/bin/env bash

./01.create-strider-system-user.sh && \
./02.install-git.sh && \
./03.firewall.sh && \
./04.install-mongodb.sh && \
./05.install-node.sh && \
./06.install-strider.sh && \
./07.daemonize-strider-pm2.sh