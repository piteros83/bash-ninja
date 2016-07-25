#!/bin/bash
#Block known dirty hosts from reaching your machine via commandlinefu.com
wget -qO - http://infiltrated.net/blacklisted|awk '!/#|[a-z]/&&/./{print "iptables -A INPUT -s "$1" -j DROP"}'