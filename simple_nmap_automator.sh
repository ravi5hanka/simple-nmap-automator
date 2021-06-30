#!/bin/bash
# Nmap stealth scan , version detection and all open port scan automator
# by Ravishanka Silva

echo "               _    __  "
echo " /\  / /\/\   /_\  |__| "
echo "/  \/ /    \ /   \ |    "

printf "Scan Type ==> -sS -sV -p- --open\n\nInput IP of the victim:"
read IP

sudo nmap -sS -sV -p- --open $IP

