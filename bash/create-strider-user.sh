#!/usr/bin/env bash

sudo -i
adduser strider --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "strider:password" | chpasswd
exit