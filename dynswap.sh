#!/bin/bash

freeram=$(free -b | awk -F' ' 'NR == 2 {print $7}')
freeswp=$(free -b | awk -F' ' 'NR == 3 {print$4}')


freetot=$(($freeram + $freeswp))

swpfile=swp$RANDOM

threshold=1000000000

if (($freetot < $threshold)); then
   dd if=/dev/zero of=/tmp/$swpfile bs=4096K count=256
   chown root /tmp/$swpfile
   chmod 0600 /tmp/$swpfile
   mkswap /tmp/$swpfile
   swapon /tmp/$swpfile
fi
