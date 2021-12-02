#!/usr/bin/bash

read -p "please enter a value for  number1: " a

read -p "please enter second value for number2: " b


echo "for addition please give input as addition == 1"

echo "for substraction please give input as addition == 2"

echo "for multiplication please give input as addition == 3"

echo "for divided  please give input as addition == 4"


read -p "please enter any value from above mention poinsts: " c


case "$c" in
   "1")  echo "addition of two number a and b is: $((a+b))"
   ;;
   "2")  echo "addition of two number a and b is: $((a-b))"
   ;;
   "3")  echo "addition of two number a and b is: $((a*b))"
   ;;
   "4")  echo "addition of two number a and b is: $((a/b))"
   ;;
esac
