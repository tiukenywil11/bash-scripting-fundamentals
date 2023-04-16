#!/bin/bash
# ./13-mv.sh example_script run_all.sh .
SOURCE_DIRECTORY=$1
FILENAME=$2
DESTINATION_DIRECTORY=$3

# Check source directory
echo $'\n'"Checking source directory $SOURCE_DIRECTORY."
ls $SOURCE_DIRECTORY

# Check destination directory
echo $'\n'"Checking destination directory $DESTINATION_DIRECTORY."
ls $DESTINATION_DIRECTORY

# Create a new file.
echo $'\n'"Moving $SOURCE_DIRECTORY/$FILENAME to $DESTINATION_DIRECTORY"
mv $SOURCE_DIRECTORY/$FILENAME $DESTINATION_DIRECTORY

# Check soruce directory after moving
echo $'\n'"Checking source directory after moving."
ls $SOURCE_DIRECTORY

# Check current directory after moving
echo $'\n'"Checking destination directory after moving."
ls $DESTINATION_DIRECTORY

# Find file that is copied
echo $'\n'"Find if $FILENAME is moved to destination directory"
find . -name $FILENAME

# Delete file in destination directory
echo $'\n'"Moving $FILENAME back to source directory"
mv $DESTINATION_DIRECTORY/$FILENAME $SOURCE_DIRECTORY

# Check current directory after moving
echo $'\n'"Checking destination directory after moving back."
ls $DESTINATION_DIRECTORY

# Check soruce directory after moving
echo $'\n'"Checking source directory after moving back."
ls $SOURCE_DIRECTORY

# Find file that is moved
echo $'\n'"Find if $FILENAME is deleted in the destination directory"
find . -name $FILENAME
