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

mkdir -p /etc/runit/sv/pipewire-autism
printf '#!/bin/sh
pipewire &
pipewire-pulse &
pipewire-media-session &' > /etc/runit/sv/pipewire-autism/run
chmod +x /etc/runit/sv/runit-autism/run
pipewire > /dev/null 2>&1 & killall pipewire
pipewire-pulse > /dev/null 2>&1 & killall pipewire-pulse
pipewire-media-session > /dev/null 2>&1 & killall pipewire-media-session
ln -s /etc/runit/sv/pipewire-autism /run/runit/service
sv up pipewire-autism

rm -rf /home/elwolf/go
rm runit-autism.sh
shutdown -r now
