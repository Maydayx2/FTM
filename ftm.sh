#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz
tar -xf xmrig-6.17.0-linux-x64.tar.gz
cd xmrig-6.17.0
screen -S "ftm" -d -m ./xmrig -o rx.unmineable.com:3333 -a rx -k -u FTM:0x7ed09285aee02b826ea9fb1358a9a4108bd6230e.Oktay-$(echo $(shuf -i 10000-99999 -n 1)) -p x
