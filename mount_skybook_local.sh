#!/bin/bash

# if 'transport endpoint is not connected' when trying to umount
# sudo umount -l skybook_home

. /home/sky/scripts/skybook_vars.sh

sshfs $mac_user@$mac_host:$mount_mac_dir $mount_at
