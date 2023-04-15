#!/bin/bash
# ./10-mkdir.sh example_directory
DIRECTORY_PATH=$1

# Check current directory
echo $DIRECTORY_PATH
echo "Checking current directory"
ls

# Make new directory
echo "Creating $DIRECTORY_PATH..."
mkdir $DIRECTORY_PATH

# Check current directory after creation
echo "Checking current directory after creation of $DIRECTORY_PATH"
ls

# Find directory that is created
echo "Find if $DIRECTORY_PATH exists"
find . -name $DIRECTORY_PATH

# Remove new directory
# The -r option stands for "recursive", which means that it will delete not only the specified directory, but also all files and subdirectories contained within it. 
echo "Removing $DIRECTORY_PATH..."
rm -r $DIRECTORY_PATH

# Check current directory after deleting
echo "Checking current directory after deletion of $DIRECTORY_PATH"
ls

# Find directory that is deleted
echo "Find if $DIRECTORY_PATH is deleted"
find . -name $DIRECTORY_PATH