#!/bin/bash
#All IP connected to my host via commandlinefu.com
netstat -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u

#Show which programs are listening on TCP and UDP ports
netstat -plunt