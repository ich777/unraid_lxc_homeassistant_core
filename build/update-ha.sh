systemctl stop homeassistant@homeassistant
su homeassistant -c 'source /opt/homeassistant/bin/activate
pip3 install --upgrade homeassistant
exit'
systemctl start homeassistant@homeassistant