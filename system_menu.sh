#!/bin/sh
clear
echo -e "\e[0;31m" #red
echo "---System Settings---"
echo -e "\e[0;30m" #black
echo "1. Top Processes"
echo "2. System Update/Upgrade"
echo "3. Installed Packages"
echo "4. Active Users"
echo "5. System Logs"
echo "6. Change Hostname"
echo "7. Return to Main Menu"
echo -n "Choice:"
read system_menu_choice
   case $system_menu_choice in
	1)
	echo -e "\e[0;31m" #red
	echo "top"
	echo -e "\e[0;30m" #black
	top
	sleep 5 
	./system_menu.sh
	;;
	2)
	echo -e "\e[0;31m" #red
	echo "apt-get -y update ; apt-get -y upgrade"
	echo -e "\e[0;30m" #black
	apt-get -y update ; apt-get -y upgrade
	sleep 5	
	./system_menu.sh
	;;
	3)	
	echo -e "\e[0;31m" #red
	echo "dpkg -l"
	echo -e "\e[0;30m" #black
	dpkg -l
	sleep 5
	./system_menu.sh
	;;
	4)
	echo -e "\e[0;31m" #red
	echo "who -a"
	echo -e "\e[0;30m" #black
	who -a
	sleep 5
	./system_menu.sh
	;;
	5)
	echo -e "\e[0;31m" #red
	echo "cat /var/log/syslog"
	echo -e "\e[0;30m" #black
	cat /var/log/syslog
	./sleep 5
	./system_menu.sh
	;;
	6)
	echo -n "Hostname: "
	read hostname
	echo -e "\e[0;31m" #red
	echo "echo $hostname > /etc/hostname ; hostname $hostname"
	echo -e "\e[0;30m" #black
	echo $hostname > /etc/hostname
	hostname $hostname
	sleep 5
	./net_menu.sh
	;;
	7)
	./main_menu.sh
	;;
   esac
