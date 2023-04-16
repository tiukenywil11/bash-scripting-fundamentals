#!/bin/bash
# ./3-output.sh "Hello World" example_text/output.txt

# If both argument 1, and 2 are empty. Print error.
if [ -z "$1" -a -z "$2" ]
then
  echo "[Error] Usage: $0 <string> <output_file>"
# If argument 2 is missing, cannot create an output file.
elif [ -z "$2" ]
then
  echo "[Error] Cannot create output file, please provide output_file"
  echo "Usage: $0 <string> <output_file>"
else
  # Print to terminal
  echo "[Print to terminal] STRING: $1"
  echo "[Print to terminal] OUTPUT_FILE: $2"

  # Writing to a file
  echo "[Writing to a file] Writing $1 to $2"
  echo $1 > $2
  # View file after writing
  echo "[Writing to a file] File after writing"
  cat $2

  # Appending to a file
  echo "[Appending to a file] Appending $1 to $2"
  echo $1 >> $2
  # View file after appending
  echo "[Appending to a file] File after appending"
  cat $2

  # Redirecting output
  echo "[Redirecting output] Writing ls command to $2"
  ls > $2
  # View file after appending
  echo "[Redirecting output] File after writing"
  cat $2
fi