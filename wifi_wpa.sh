#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---WPA1/2 PSK Connection---"
echo -e "\e[0;30m" #black
echo -n "interface:"
read wifi_int
echo "ctrl_interface=/var/run/wpa_supplicant" > /tmp/current.conf
echo "" >> /tmp/current.conf
echo "network={" >> /tmp/current.conf
echo -n "ssid:"
read wifi_ssid
echo -e ssid="\042"$wifi_ssid"\042" >> /tmp/current.conf
echo "scan_ssid=1" >> /tmp/current.conf
echo "key_mgmt=WPA-PSK" >> /tmp/current.conf
echo -n "passphrase:"
stty -echo      #Masks
read wifi_pass  #The
stty echo       #Password
echo -e psk="\042"$wifi_pass"\042" >> /tmp/current.conf
echo "}" >> /tmp/current.conf

iface=$wifi_int

#shut down interface
ifconfig $iface down

#set management of wireless device
iwconfig $iface mode Managed

#enable interface
ifconfig $iface up

#stop any persistent wireless wpa2 sessions
killall wpa_supplicant

#apply WPA/WPA2 personal settings to device
wpa_supplicant -B -Dwext -i $iface -c /tmp/current.conf -dd

#obtain an IP address
dhclient $iface

shred /tmp/current.conf
rm /tmp/current.conf

clear

iwconfig $iface

sleep 5

./net_menu.sh
