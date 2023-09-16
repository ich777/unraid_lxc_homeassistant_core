#!/bin/bash
su homeassistant -c "cd /opt/homeassistant && \
python3 -m venv . && \
source bin/activate && \
python3 -m  pip install wheel --break-system-packages && \
pip3 install homeassistant && \
timeout 30 hass 2>/dev/null"