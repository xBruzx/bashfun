#!/bin/bash

#prompt the user for input temp
echo "Please enter in the temperature outside: "
read tempF

tempC=$(( (tempF - 32) * 5 / 9))

echo "Your temp in C is $tempC C"
