#!/bin/bash
apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev \
  llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

PYTHON_VERSION=3.12.4
PYTHON_MAJOR_MINOR=$(echo $PYTHON_VERSION | cut -d '.' -f 1,2)

cd /tmp
wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz
tar -xf Python-${PYTHON_VERSION}.tar.xz
cd /tmp/Python-${PYTHON_VERSION}
./configure
make -j20
make altinstall -j20
rm -rf /usr/bin/python3 /usr/bin/pip3
ln -s /usr/local/bin/python${PYTHON_MAJOR_MINOR} /usr/bin/python3
ln -s /usr/local/bin/pip${PYTHON_MAJOR_MINOR} /usr/bin/pip3
rm -rf cd /tmp/Python-${PYTHON_VERSION}

apt remove -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev \
  llvm libncurses5-dev libncursesw5-dev tk-dev libffi-dev liblzma-dev python3-openssl git

apt -y autoremove
