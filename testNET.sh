#!/bin/sh
echo -n "Destination Address:"
read dest_address
echo -n "Ping or TraceRoute (p/t):"
read p_or_t
   case $p_or_t in
	p)
	echo -e "\e[0;31m" #red
	echo "ping $dest_address -c 5"
	echo -e "\e[0;30m" #black
	ping $dest_address -c 5 
	sleep 5
	./net_menu.sh
	;;
	t)
	echo -e "\e[0;31m" #red
	echo "mtr $dest_address"
	echo -e "\e[0;30m" #black
	mtr $dest_address 
	sleep 5
	./net_menu.sh
	;;
   esac
