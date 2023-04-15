#!/bin/bash
# ./9-cd.sh example_script
DIRECTORY_PATH=$1
# Resource: https://stackoverflow.com/questions/20839678/how-to-define-pwd-as-a-variable-in-unix-shell
CURRENT_DIRECTORY=$(pwd)

# Check present working directory
echo "Current directory:"
pwd

# Change directory
echo "Changing directory to $1"
cd $DIRECTORY_PATH

# Check present working directory after cd
echo "Current directory after cd:"
pwd

# Check present working directory
echo "Going back to previous directory"
cd $CURRENT_DIRECTORY

# Check present working directory after going back
echo "Current directory after going back:"
pwd
