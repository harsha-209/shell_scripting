#!/usr/bin


read_inputs()
{
  read -p "please enter first number: " number1
  read -p "please enter second number: " number2
}


addition()
{
  sum=$((number1+number2))
  echo "$sum"
}


read_inputs

addition
