#!/bin/bash
ln -s /etc/init.d/generate_ssh_keys.sh /etc/rc.local

rm -f /etc/ssh/*_key /etc/ssh/*.pub
