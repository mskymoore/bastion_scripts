#!/bin/bash

# if 'transport endpoint is not connected' when trying to umount
# sudo umount -l skybook_home

. /home/sky/scripts/skybook_vars.sh

/home/sky/scripts/tunnel_skybook.sh
sleep 2
sshfs -p $bast_fwd_port $mac_user@$bast_url:$mount_mac_dir $mount_at
