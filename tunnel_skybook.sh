#!/bin/bash

. /home/sky/scripts/skybook_vars.sh

ps aux |grep -e "\-N \-L 0.0.0.0:$bast_fwd_port" > /dev/null

if [ $? == 0 ];then
   echo "Tunnel already established"
else
	ssh -A -p $bast_ssh_port $bast_user@$bast_url "ssh -N -L $bast_bind_addr:$bast_fwd_port:$mac_host:$mac_ssh_port $mac_user@$mac_host" &
	echo "Tunnel established"
fi
