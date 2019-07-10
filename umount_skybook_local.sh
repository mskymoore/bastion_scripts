#!/bin/bash

. /home/sky/scripts/skybook_vars.sh

output=`ps aux | grep -e "sshfs $mac_user@$mac_host"`
if [ $? == 0 ];then
	output_arr=($output)
	sshfs_pid=${output_arr[1]}
	kill $sshfs_pid
	echo "sshfs process killed"
else
	echo "sshfs process not found"
fi
