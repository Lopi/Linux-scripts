#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---Network Adapter Settings---"
echo -e "\e[0;30m" #black
echo "1. Change Wireless Mode"
echo "2. Change IP Address"
echo "3. Change MAC Address"
echo "4. Test Network Connectivity"
echo "5. View Current Traffic"
echo "6. View Routing Tables"
echo "7. Connect to Wireless Network"
echo "8. Return to Main Menu"
echo -n Choice: 
read net_menu_choice
   case $net_menu_choice in
	1)
	./changeMODE.sh
	;;
	2)
	./changeIP.sh
	;;
	3)
	./changeMAC.sh
	;;
	4)
	./testNET.sh
	;;
	5)
	./liveVIEW.sh
	;;
	6)
	echo -e "\e[0;31m" #red
	echo "route -v"
	echo -e "\e[0;30m" #black
	route -v
	sleep 5
	./net_menu.sh
	;;
	7)
	./wifi.sh
	;;
	8)
	./main_menu.sh
	;;
   esac
