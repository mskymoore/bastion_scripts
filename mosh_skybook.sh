#!/bin/bash

. /home/sky/scripts/skybook_vars.sh

sga-guard -p $bast_ssh_port sky@$bast_url &> /home/sky/scripts/sga-guard.log &
echo $! > /home/sky/scripts/sga-guard.pid
sleep 2
mosh -p $mosh_port --ssh="ssh -p $bast_ssh_port" $mac_user@$bast_url -- sga-ssh $mac_user@$mac_host
kill `cat /home/sky/scripts/sga-guard.pid`

