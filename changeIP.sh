#!/bin/sh

# ifconfig [interface] [IP address] netmask [subnet-mask] (manually set IP and subnet-mask details)
		
echo -n "Interface:"
read net_adapter
	
echo -n "Manual or DHCP (m/d):"
read choice_1
   case $choice_1 in
	m)
	echo -n "IP Address:"
	read ip 
	echo -n "Subnet Mask:"
	read netmask
	echo -e "\e[0;31m" #red
	echo "ifconfig $net_adapter $ip netmask $netmask"
	echo -e "\e[0;30m" #black

	ifconfig $net_adapter $ip netmask $netmask 
	sleep 5
	./net_menu.sh
	;;				
	d)
	echo -e "\e[0;31m" #red
	echo "dhclient $net_adapter"
	echo -e "\e[0;30m" #black
	dhclient $net_adapter 
	sleep 5
	./net_menu.sh
	;;
   esac

