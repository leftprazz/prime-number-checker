#!/bin/bash

num=$1
is_prime=1

# check if the number less than 2
if [ $num -lt 2 ]; then
    is_prime=0
fi

# loop
for (( i=2; i*i<=$num; i++ )); do
    if [ $((num % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
done

# print output
if [ $is_prime -eq 1 ]; then
    echo "This number is a prime number"
else
    echo "This number is not a prime number"
fi
