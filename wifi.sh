#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---Wireless Connection---"
echo -e "\e[0;30m" #black

echo "1. WEP"
echo "2. WPA"
echo "3. Ad-Hoc"
echo "4. Return to Network Menu"
echo -n "Choice: "
read  choice

	case $choice in
	1)
	clear
	./wifi_wep.sh
	;;
	2)
	clear
	./wifi_wpa.sh
	;;
	3)
	./wifi_adhoc.sh
	;;
	4)
	clear
	./net_menu.sh
	;;

esac

./net_menu.sh
