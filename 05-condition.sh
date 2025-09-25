#!/bin/bash

# Assign the first command-line argument to the variable NUMBER
NUMBER=$1

# Check if the value of NUMBER is less than 10
if [ $NUMBER -lt 10 ]; then
  # If true, print that the number is less than 10
  echo "given number $NUMBER is less than 10"
else
  # Otherwise (if the number is greater than or equal to 10), print this message
  echo "given number $NUMBER is greater than or equal to 10"
fi

# The commented lines show other common numeric comparison operators in Bash:
# -gt : Greater than
# -eq : Equal to
# -ne : Not equal to

