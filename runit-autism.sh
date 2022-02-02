#!/bin/sh

NetworkManager

mkdir -p /run/runit
mkdir -p /run/runit/service

ln -s /etc/runit/sv/NetworkManager /run/runit/service
sv up NetworkManager
killall NetworkManager
sv up NetworkManager

rm runit-autism.sh
shutdown -r now
