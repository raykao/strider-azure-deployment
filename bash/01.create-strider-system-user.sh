#!/usr/bin/env bash

sudo -i

RANDOM_PASSWORD_HASH=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

adduser strider --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password

echo "strider:$RANDOM_PASSWORD_HASH" | chpasswd

exit
