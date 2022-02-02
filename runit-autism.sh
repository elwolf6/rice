#!/bin/sh

NetworkManager

mkdir -p /run/runit
mkdir -p /run/runit/service

ln -s /etc/runit/sv/NetworkManager /run/runit/service
sv up NetworkManager
killall NetworkManager
sv up NetworkManager

rm -rf /home/elwolf/go
rm runit-autism.sh
shutdown -r now
