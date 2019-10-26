#!/bin/bash

read -p "What is your name ? " name

echo "Hello $name"
#eq ne le lt ge gt
read -p "How old are you ? " age
if [ $age -ge 16 ] 
then
  echo "You can drive"
elif [ $age -eq 15 ] 
then
  echo "You can drive next year"
else
  echo "You can't drive"
fi

read -p "Enter Number : " num
if ((num  == 10 )); then
       echo "Your number is 10"
fi

if ((num > 10)); then
	echo "it's greater than 10"
else
	echo "it's less than 10"
fi

if (( ((num%2)) == 0)); then
       echo "It is even"
fi


if (( ((num > 0)) && ((num < 11)) ));
then
	echo "$num is between 1 and 10"
fi	

