#!/usr/bin/bash


for x in `iwconfig 2>&1| awk '$3 ~ "RTL8821AU" {print $1}'`
do
    ifconfig ${x} down
    #ifconfig ${x} up
    iwconfig ${x} mode monitor
    airmon-ng start ${x}
done
