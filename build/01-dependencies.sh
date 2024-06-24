#!/bin/bash
apt-get update
apt-get -y install curl wget nano iputils-ping libffi-dev libssl-dev libjpeg-dev \
  zlib1g-dev autoconf build-essential libopenjp2-7 libtiff6 libturbojpeg0-dev tzdata \
  cron openssh-server libpcap-dev ffmpeg
systemctl stop ssh.service
