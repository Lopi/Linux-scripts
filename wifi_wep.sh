#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---WEP Connection---"
echo -e "\e[0;30m" #black
echo -n "interface:"
read wifi_int
echo -n "ssid:"
read wifi_ssid
echo -n "passphrase:"
stty -echo      #Masks    
read wifi_pass  #The
stty echo       #Password
iface=$wifi_int

iwconfig $wifi_int mode managed key $wifi_pass
iwconfig $wifi_int essid "\042"$wifi_ssid"\042"
dhclient $wifi_int












 
