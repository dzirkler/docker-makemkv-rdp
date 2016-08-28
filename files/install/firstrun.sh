#!/bin/bash

#Link to Makemkv config folder
mkdir -p /config/config
ln -s /config/config /nobody/.MakeMKV
chown -R nobody:users /config
chmod -R g+rw /config

#Add nobody to cdrom group
addgroup --gid 24 makemkv
usermod -a -G 24 nobody

#Remove Lock file if it exists.
if [ -f /tmp/.X1-lock]; then
  rm /tmp/.X1-lock
fi
