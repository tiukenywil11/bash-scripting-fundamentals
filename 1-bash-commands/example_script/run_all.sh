#!/bin/bash
# Echoes the date
echo "Today is " `date`

# Reads input from the user
echo -e "\nenter the path to directory"
read the_path

# Output showing list of files from the path provided
echo -e "\n you path has the following files and folders: "
ls $the_path