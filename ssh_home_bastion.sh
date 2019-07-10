#!/bin/bash

. /home/sky/scripts/skybook_vars.sh
ssh -At -p $bast_ssh_port $mac_user@$bast_url "ssh $mac_user@$mac_host"
