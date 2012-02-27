#!/bin/sh
echo -n "Interface (eth0, wlan0...)"
read net_adapter
echo -n "TCPdump or wireShark (t/w):"
read t_or_w
   case $t_or_w in
	t)
	echo -e "\e[0;31m" #red
	echo "tcpdump -i $net_adapter"
	echo -e "\e[0;30m" #black
	tcpdump -i $net_adapter
	sleep 5
	./net_menu.sh 
	;;
	w)
	echo -e "\e[0;31m" #red
	echo "wireshark -i $net_adapter"
	echo -e "\e[0;30m" #black
	wireshark -i $net_adapter -k
	sleep 5
	./net_menu.sh
	;;
   esac
