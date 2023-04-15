#!/bin/bash

# Assign value directly
country=Philippines

# Assign the value based on the output obtained from a program or command, using command substitution. 
# Note that $ is required to access an existing variable's value.
same_country=$country

# To access the variable value, append $ to the variable name.
echo "(direct assignment) country:" $country
echo "(obtained from program) same_country:" $same_country

# Variable Naming Conventions:
#   - Variable names should start with a letter or an underscore (_).
#   - Variable names can contain letters, numbers, and underscores (_).
#   - Variable names are case-sensitive.
#   - Variable names should not contain spaces or special characters.
#   - Use descriptive names that reflect the purpose of the variable.
#   - Avoid using reserved keywords, such as if, then, else, fi, and so on as variable names.