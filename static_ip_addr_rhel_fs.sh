#!/bin/bash

#sudo nmcli connection show -> get UUID
#$1 -> UUID
#$2 -> ipaddr/CIDR  

sudo nmcli connection modify $1 IPv4.address $2
sudo nmcli connection modify $1 IPv4.gateway 192.168.1.1
sudo nmcli connection modify $1 IPv4.dns 8.8.8.8
sudo nmcli connection modify $1 IPv4.method manual
sudo nmcli connection down $1
sudo nmcli connection up $1
