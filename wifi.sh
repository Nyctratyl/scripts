#!/bin/sh
iwconfig wlo1 | grep -oP '(?<=ESSID:").*(?=")|(?<=Link Quality=).*(?=  Signal)' | tr '\n' ';' | awk -F\; '{print "WIFI: " $1 " (" $2 ")"}'
iwconfig wlan0 | grep -oP '(?<=ESSID:").*(?=")|(?<=Link Quality=).*(?=  Signal)' | tr '\n' ';' | awk -F\; '{print "WIFI: " $1 " (" $2 ")"}'
