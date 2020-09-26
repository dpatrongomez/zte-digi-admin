#!/bin/sh
echo 'Instalando wireshark'
apt install wireshark -y

echo 'Instalando mitmproxy'
apt install python3-pip -y
pip3 install mitmproxy

echo 'Instalando lighttpd y stunnel'
apt install lighttpd -y
apt install gamin -y
systemctl start lighttpd
systemctl enable lighttpd

apt install stunnel4 -y

echo 'Instalando rp-pppoe'
apt install ppp ppp-dev pppoeconf build-essential -y
wget -O rp-pppoe.tar.gz https://dianne.skoll.ca/projects/rp-pppoe/download/rp-pppoe-3.14.tar.gz
tar xvf rp-pppoe.tar.gz
cd rp-pppoe-3.14/src
./configure
make
make install

echo 'INSTALACION COMPLEATADA'
