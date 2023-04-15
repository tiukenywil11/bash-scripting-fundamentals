#!/bin/bash
# ./2-input.sh "Argument 1"

# Reading the user input and storing it in a variable, named VARIABLE.

# The -e option allows you to enable interpretation of backslash escapes in the string.
# This means that you can use special characters like \n to represent a newline character, or \t to represent a tab character.
echo -e "[User input] Input variable to be printed:"
read VARIABLE

# Output of VARIABLE after `read`.
echo "[User input] VARIABLE:" $VARIABLE

# Input file name to be read.
# e.g. example_text/input.txt
echo -e "[Reading from a file]  Input file name to be read:"
read FILENAME

# Reading from a file.
echo -e "[Reading from a file] filename:" $FILENAME
# Note: input text file should end with a newline. Check 'example_text/input.txt' line 3 for example.
while read line
do
  echo "[Reading from a file]" $line
done < $FILENAME

# Command line argument.
# From ChatGPT: The $0 variable is a special variable that contains the name of the script.

# The -z flag causes test to check whether a string is empty. Returns true if the string is empty, false if it contains something.
# Resource: https://www.linux.org/threads/what-does-z-flag-mean-in-shell-script-used-in-if-condition.17899/#:~:text=In%20both%20cases%2C%20the%20%2Dz,false%20if%20it%20contains%20something.

# If no arguments are passed to the script, show usage, else print argument.
if [ -z "$1" ]
then
  echo "[Command line argument] Usage: $0 <argument>"
else
  echo "[Command line argument] Argument: $1"
fi