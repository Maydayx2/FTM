#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install -y tar
wget https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz
tar xf xmrig-6.14.0-linux-x64.tar.gz
cd xmrig-6.14.0
randomNumber=$(( 1777+ $RANDOM % 9))
./xmrig -o rx.unmineable.com:3333 -a rx -k -u FTM:0x7ed09285aee02b826ea9fb1358a9a4108bd6230e.Oktay-$randomNumber -p x
while [ 1 ]; do
sleep 3
done
sleep 999
