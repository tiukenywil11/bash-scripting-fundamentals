#!/bin/bash

# Resource: https://askubuntu.com/questions/743493/best-way-to-read-a-config-file-in-bash
# From ChatGPT: use `cat -A example.config` to debug if there's a special charater in `example.config`.

# Optionally, set default values
# var1="default value for var1"
# var2="default value for var2"

. example.config

echo "$var1 $var2"