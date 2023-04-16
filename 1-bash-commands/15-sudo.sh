#!/bin/bash
# ./15-sudo.sh ls <password>
COMMAND=$1

# Getting PASSWORD from config file
. ../bash.config

# Run with admin priviledges
# Resource: https://superuser.com/questions/67765/sudo-with-password-in-one-command-line
echo $PASSWORD | sudo -S $COMMAND 