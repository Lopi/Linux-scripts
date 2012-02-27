#!/bin/sh

# iwconfig [interface] mode [mode]

echo -n "Interface: (wlan0,wlan1...)"
read net_adapter

echo -n "Mode: (Master,Managed,Monitor,Ad-Hoc)"
read wifi_mode

	echo -e "\e[0;31m" #red
	echo "ifconfig $net_adapter down ; iwconfig $net_adapter mode $wifi_mode ; ifconfig $net_adapter up ; iwconfig $net_adapter"
	echo -e "\e[0;30m" #black
	ifconfig $net_adapter down
	iwconfig $net_adapter mode $wifi_mode
	ifconfig $net_adapter up
	iwconfig $net_adapter 
	sleep 5
	./net_menu.sh

