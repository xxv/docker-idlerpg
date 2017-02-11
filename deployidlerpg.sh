#!/bin/sh

VERSION=3.1.2

curl -o /tmp/idlerpg.tar.gz http://idlerpg.net/bot.v${VERSION}.tar.gz
mkdir /usr/src/idlerpg
cd /usr/src/idlerpg
tar --strip-components=1 -xvf /tmp/idlerpg.tar.gz
patch -p1 </tmp/dedaemonize.patch
rm .irpg.conf
chown -R root:root /usr/src/idlerpg
chmod 644 /usr/src/idlerpg/*
