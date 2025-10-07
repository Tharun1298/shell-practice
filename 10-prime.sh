#!/bin/bash

echo "Enter a number:"
read num

# Handle special cases for numbers less than 2
if (( num < 2 )); then
    echo "$num is not a prime number."
    exit 0
fi

is_prime=1 # Assume it's prime initially

# Loop from 2 up to the square root of the number
# We only need to check up to sqrt(num) because if a number has a divisor greater than its square root,
# it must also have a divisor smaller than its square root.
for (( i=2; i*i <= num; i++ )); do
    if (( num % i == 0 )); then
        is_prime=0 # Not a prime number
        break      # Exit the loop as soon as a divisor is found
    fi
done

if (( is_prime == 1 )); then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi