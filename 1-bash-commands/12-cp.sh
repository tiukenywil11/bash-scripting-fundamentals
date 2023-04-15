#!/bin/bash
# ./12-cp.sh example_script run_all.sh .
SOURCE_DIRECTORY=$1
FILENAME=$2
DESTINATION_DIRECTORY=$3

# Check source directory
echo "Checking source directory $SOURCE_DIRECTORY."
ls $SOURCE_DIRECTORY

# Check destination directory
echo "Checking destination directory $DESTINATION_DIRECTORY."
ls $DESTINATION_DIRECTORY

# Create a new file.
echo "Copying $SOURCE_DIRECTORY/$FILENAME to $DESTINATION_DIRECTORY"
cp $SOURCE_DIRECTORY/$FILENAME $DESTINATION_DIRECTORY

# Check current directory after copy
echo "Checking destination directory after copy."
ls $DESTINATION_DIRECTORY

# Find file that is copied
echo "Find if $FILENAME is copied to destination directory"
find . -name $FILENAME

# Delete file in destination directory
echo "Deleting $FILENAME in destination directory"
rm $DESTINATION_DIRECTORY/$FILENAME

# Check current directory after deletion
echo "Checking destination directory after deletion."
ls $DESTINATION_DIRECTORY

# Find file that is deleted
echo "Find if $FILENAME is deleted in the destination directory"
find . -name $FILENAME
