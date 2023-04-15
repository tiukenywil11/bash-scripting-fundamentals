#!/bin/bash
# ./11-touch.sh example_file
FILENAME=$1

# Check current directory
echo "Checking current directory"
ls

# Create a new file.
echo "Creating $FILENAME..."
touch $FILENAME

# Check current directory after creation
echo "Checking current directory after creation of $FILENAME"
ls

# Find file that is created
echo "Find if $FILENAME exists"
find . -name $FILENAME

# Remove new file
echo "Removing $FILENAME..."
rm $FILENAME

# Check current directory after deleting
echo "Checking current directory after deletion of $FILENAME"
ls

# Find file that is deleted
echo "Find if $FILENAME deleted"
find . -name $FILENAME
