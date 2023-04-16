#!/bin/bash
# ./12-cp.sh example_script run_all.sh .
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
echo $'\n'"Copying $SOURCE_DIRECTORY/$FILENAME to $DESTINATION_DIRECTORY"
cp $SOURCE_DIRECTORY/$FILENAME $DESTINATION_DIRECTORY

# Check current directory after copy
echo $'\n'"Checking destination directory after copy."
ls $DESTINATION_DIRECTORY

# Find file that is copied
echo $'\n'"Find if $FILENAME is copied to destination directory"
find . -name $FILENAME

# Delete file in destination directory
echo $'\n'"Deleting $FILENAME in destination directory"
rm $DESTINATION_DIRECTORY/$FILENAME

# Check current directory after deletion
echo $'\n'"Checking destination directory after deletion."
ls $DESTINATION_DIRECTORY

# Find file that is deleted
echo $'\n'"Find if $FILENAME is deleted in the destination directory"
find . -name $FILENAME
