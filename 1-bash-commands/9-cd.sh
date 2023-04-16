#!/bin/bash
# ./9-cd.sh example_script
DIRECTORY_PATH=$1
# Resource: https://stackoverflow.com/questions/20839678/how-to-define-pwd-as-a-variable-in-unix-shell
CURRENT_DIRECTORY=$(pwd)

# Check present working directory
echo "Current directory:"
pwd

# Resource: https://unix.stackexchange.com/questions/20035/how-to-add-newlines-into-variables-in-bash-script
# Change directory
echo $'\n'"Changing directory to $1"
cd $DIRECTORY_PATH

# Check present working directory after cd
echo $'\n'"Current directory after cd:"
pwd

# Check present working directory
echo $'\n'"Going back to previous directory"
cd $CURRENT_DIRECTORY

# Check present working directory after going back
echo $'\n'"Current directory after going back:"
pwd
