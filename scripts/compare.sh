#!/bin/bash  
read -p "please enter the first number: " a
read -p "please enter the second number: " b
if [[ $a -eq $b ]]; then
   echo "a is equal to b"
else
   echo "a is not equal to b"
fi
