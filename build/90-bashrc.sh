#!/bin/bash
echo -e "\ncd /root\nsu - homeassistant" >> /root/.bashrc
hostnamectl set-hostname hasscore
