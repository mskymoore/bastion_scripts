#!/bin/bash

. /home/sky/scripts/skybook_vars.sh

ssh -p $bast_ssh_port $bast_user@$bast_url "bash -s" < /home/sky/scripts/kill_tunnel.sh
