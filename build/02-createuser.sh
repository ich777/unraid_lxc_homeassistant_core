#!/bin/bash
useradd -rm homeassistant -s /bin/bash
chpasswd <<<"homeassistant:homeassistant"
mkdir -p /opt/homeassistant
chown homeassistant:homeassistant /opt/homeassistant
