#!/bin/bash

#disco lights in the terminal ;) via commandlinefu.com
while true; do printf "\e[38;5;$(($(od -d -N 2 -A n /dev/urandom)%$(tput colors)))m.\e[0m"; done

#pretend to be busy in office to enjoy a cup of coffee via commandlinefu.com
cat /dev/urandom | hexdump -C | grep "ca fe"

#matrix for the terminal via commandlinefu.com
echo -e "\e[32m"; while :; do for i in {1..94}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 16)) == 1 ]]; then v+="\e[1m $r "; else v+="\e[2m $r "; fi; else v+=" "; fi; done; echo -e "$v"; v=""; done