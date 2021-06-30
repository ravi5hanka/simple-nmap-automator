#!/bin/bash
# Nmap IP discovery, stealth scan , version detection and all open port scan automator
# by Ravishanka Silva
# Created for the ease of use in CTFs(specially Vulnhub)

echo "               _    __     _        ___  __           _   ___  __   __   "
echo " /\  / /\/\   /_\  |__|   /_\  |  |  |  |  |  /\/\   /_\   |  |  | |__|  "
echo "/  \/ /    \ /   \ |     /   \ |__|  |  |__| /    \ /   \  |  |__| |  \  "
printf "                 Created by Ravi5hanka\n\n"

printf "First identify your LAN with ifconfig\n\n"
ifconfig

# nmap -sn scan
printf "Input network range for the IP discovery:"
read IP_RANGE

sudo nmap -sn $IP_RANGE
printf "\n"

printf "Nmap scan --> -sS -sV -p- --open\nInput IP of the victim:"
read IP

sudo nmap -sS -sV -p- --open $IP
