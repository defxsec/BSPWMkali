#!/bin/sh

#echo "%{F#a486dd} %{F#ffffff}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"
echo "%{F#8e24aa} $(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}%{F#ffffff}"
