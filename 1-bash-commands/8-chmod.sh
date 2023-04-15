#!/bin/bash
# ./8-chmod.sh ./example-script/run_all.sh
DIRECTORY=$1
# Gives execute permission to provided path.
chmod u+x $DIRECTORY
# Lists files with permissions.
ls -l $DIRECTORY