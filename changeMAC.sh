#!/bin/sh

# ifconfig [interface] hw ether [MAC] (Change the wireless cards MAC address, specify in format 11:11:11:11:11:11)

echo -n "Interface:"
read net_adapter

echo -n "Manual or Random MAC (m/r):"
read m_or_r
	case $m_or_r in
		m)
		ifconfig $net_adapter down
		echo -n "Enter MAC Address: (11:11:11:11:11:11)"
		read user_mac
		echo -e "\e[0;31m" #red
		echo "ifconfig $net_adapter down ; macchanger -m $user_mac $net_adapter ; ifconfig $net_adapter up"
		echo -e "\e[0;30m" #black
		macchanger -m $user_mac $net_adapter
		ifconfig $net_adapter up
		sleep 5
		./net_menu.sh
		;;

		r)
		ifconfig $net_adapter down
		echo -e "\e[0;31m" #red
		echo "ifconfig $net_adapter down ; openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | macchanger $net_adapter ; ifconfig $net_adapter up"
		echo -e "\e[0;30m" #black
		openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | macchanger $net_adapter
		ifconfig $net_adapter up
		sleep 5
		./net_menu.sh
		;;
	esac


