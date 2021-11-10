#!/bin/sh

NetworkManager

mkdir -p /run/runit
mkdir -p /run/runit/service

ln -s /etc/runit/sv/NetworkManager /run/runit/service
sv up NetworkManager
mkdir -p /etc/runit/sv/ckb-next-daemon
printf '#!/bin/sh
exec ckb-next-daemon > /dev/null 2>&1' > /etc/runit/sv/ckb-next-daemon/run
chmod +x /etc/runit/sv/ckb-next-daemon/run
ckb-next-daemon > /dev/null 2>&1 & killall ckb-next-daemon
ln -s /etc/runit/sv/ckb-next-daemon /run/runit/service
sv up ckb-next-daemon
killall NetworkManager
sv up NetworkManager

rm -rf /home/elwolf/go
