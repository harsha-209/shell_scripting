#!/usr/bin


addition()
{
  a=$1
  b=$2
  sum=$((a+b))
  echo "sum of above two numbers $a  and $b : $sum"
}

p=1
q=2

addition "$p" "$q"
