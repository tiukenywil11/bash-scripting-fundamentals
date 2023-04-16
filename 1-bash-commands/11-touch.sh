#!/bin/bash
# ./11-touch.sh example_file
FILENAME=$1

# Check current directory
echo $'\n'"Checking current directory"
ls

# Create a new file.
echo $'\n'"Creating $FILENAME..."
touch $FILENAME

# Check current directory after creation
echo $'\n'"Checking current directory after creation of $FILENAME"
ls

# Find file that is created
echo $'\n'"Find if $FILENAME exists"
find . -name $FILENAME

# Remove new file
echo $'\n'"Removing $FILENAME..."
rm $FILENAME

# Check current directory after deleting
echo $'\n'"Checking current directory after deletion of $FILENAME"
ls

# Find file that is deleted
echo $'\n'"Find if $FILENAME deleted"
find . -name $FILENAME
