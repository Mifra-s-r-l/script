#!/bin/bash

#$2 -> ipaddr/CIDR  (es.192.168.1.2/24)

UUID=`nmcli connection show | tail -1 | awk '{print $1}'`

sudo nmcli connection modify $UUID IPv4.address $1
sudo nmcli connection modify $UUID IPv4.gateway 192.168.1.1
sudo nmcli connection modify $UUID IPv4.dns 8.8.8.8
sudo nmcli connection modify $UUID IPv4.method manual
sudo nmcli connection down $UUID
sudo nmcli connection up $UUID
