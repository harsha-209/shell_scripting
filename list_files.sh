#!/usr/bin

i=1

for VARIABLE in `ls` i++
do
     echo "$i $VARIABLE"
     ((i++))
done
