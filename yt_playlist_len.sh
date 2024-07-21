#!/bin/bash

secs=$(curl $1 | rg -o '"lengthSeconds":".*?"' | cut -d":" -f2 | sed 's/"//g' | awk '{ sum += $0 }; END { print sum }')
# secs=$(curl $1 | rg -o '"lengthSeconds":".*?"')
printf '\n'

RED='\033[0;31m'
NC='\033[0m'

printf "${RED}%d Days %d Hours %d Minutes %d Seconds${NC}\n" $((secs / 86400)) $((secs % 86400 / 3600)) $((secs % 3600 / 60)) $((secs % 60))
