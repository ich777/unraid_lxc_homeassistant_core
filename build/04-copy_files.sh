#!/bin/bash
cd /tmp/build
chmod 755 $(ls -1 /tmp/build/ | grep -v "^[0-9][0-9]-")
cp /tmp/build/homeassistant@homeassistant.service /etc/systemd/system/homeassistant@homeassistant.service
cp /tmp/build/update-ha.sh /home/homeassistant/update-ha.sh
cp /tmp/build/generate_ssh_keys.sh /etc/init.d/generate_ssh_keys.sh
