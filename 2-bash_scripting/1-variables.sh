#!/bin/bash

# Assign value directly
country=Philippines

# Assign the value based on the output obtained from a program or command, using command substitution. 
# Note that $ is required to access an existing variable's value.
same_country=$country

# To access the variable value, append $ to the variable name.
echo "[direct assignment] country:" $country
echo "[obtained from program] same_country:" $same_country

# Variable Naming Conventions:
#   - Variable names should start with a letter or an underscore (_).
#   - Variable names can contain letters, numbers, and underscores (_).
#   - Variable names are case-sensitive.
#   - Variable names should not contain spaces or special characters.
#   - Use descriptive names that reflect the purpose of the variable.
#   - Avoid using reserved keywords, such as if, then, else, fi, and so on as variable names.

# Built-in variables
# Resource: The Ultimate Bash Crash Course - zach-gollwitze

echo "Script name: " $0  # Prints the name of the script - shell-scripting-basics.sh
echo "First argument:" $1  # Prints the first argument given to a script
echo "Second argument:" $2  # Prints the second argument given to a script 
echo "Third argument:" $3  # Prints the third... do I need to continue here??? 
echo "Number of argument(s):" $#  # Prints the number of arguments passed to the script
echo "All arguments: " $@  # Prints all arguments passed to the script
echo "Process ID: " $$  # Prints the process ID
echo "Exit code: " $?  # Prints the exit code of the previous process run