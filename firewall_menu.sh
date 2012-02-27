#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---Firewall Settings---"
echo -e "\e[0;30m" #black
echo "1. View Current Configuration"
echo "2. View Active Connections"
echo "3. Self Port Scan"
echo "4. Return to Main Menu "
echo -n "Choice: "
read fire_menu_choice
   case $fire_menu_choice in
	1)
	echo -e "\e[0;31m" #red
	echo "iptables -L"
	echo -e "\e[0;30m" #black
	iptables -L
	sleep 5 
	./firewall_menu.sh
	;;
	2)
	echo -e "\e[0;31m" #red
	echo "netstat -a"
	echo -e "\e[0;30m" #black
	netstat -a
	sleep 5
	./firewall_menu.sh
	;;	
	3)
	echo -e "\e[0;31m" #red
	echo "nmap 127.0.0.1"
	echo -e "\e[0;30m" #black
	nmap 127.0.0.1
	sleep 5
	./firewall_menu.sh
	;;
	4)
	./main_menu.sh
	;;
   esac
