#!/bin/bash
# ./4-conditional.sh

echo "Please enter a number: "
read num

# '-gt': greater than
# '-lt': less thann
if [ $num -gt 0 ]
then
  echo "[basic conditional] $num is positive"
elif [ $num -lt 0 ]
then
  echo "[basic conditional] $num is negative"
else
  echo "[basic conditional] $num is zero"
fi

# '-a': and operator
if [ $num -gt 60 -a $num -lt 100 ]
then
  echo "[and operator] $num is greater than 60, and less than 100"
else
  echo "[and operator] $num is not greater than 60, or not less than 100"
fi 

# '-o': or operator
if [ $num -gt 60 -o $num -lt 100 ]
then
  echo "[or operator] $num is either greater than 60, or less than 100"
else
  echo "[or operator] $num is not greater than 60, andsnot less than 100"
fi 
