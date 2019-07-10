#!/bin/bash

. /home/sky/scripts/skybook_vars.sh

output=`ps aux |grep -e "\-N \-L 0.0.0.0:$bast_fwd_port"`
if [ $? == 0 ];then
	output_arr=($output)
	tun_pid=${output_arr[1]}
	kill $tun_pid
	echo "Tunnel killed"
else
	echo "Tunnel process not found"
fi
