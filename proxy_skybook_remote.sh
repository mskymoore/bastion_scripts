#!/bin/bash

. /home/sky/scripts/skybook_vars.sh

/home/sky/scripts/tunnel_skybook.sh
sleep 2
ssh -p $bast_fwd_port -D $proxy_port $mac_user@$bast_url
