#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---Main Menu---"
echo -e "\e[0;30m" #black
echo "1. Network Adapter Settings"
echo "2. Firewall Settings"
echo "3. System Settings"
echo "4. Exit"
echo -n "Choice:"
read main_choice
   case $main_choice in
	1)
	./net_menu.sh
	;;
	2)
	./firewall_menu.sh
	;;
	3)
	./system_menu.sh
	;;
	4)
	clear
	exit
	;;
   esac
