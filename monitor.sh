#!/bin/bash

### monitoring  cpu,memory and disk usage of this system


echo `date`
#cpu use threshold
cpu_threshold='80'



 #mem idle threshold
mem_threshold='100'
 #disk use threshold
disk_threshold='90'






cpu_idle=`top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d "."`

cpu_use=`expr 100 - $cpu_idle`
 echo "cpu utilization: $cpu_use"
if [ $cpu_use -gt $cpu_threshold ]
    then
        echo "cpu warning!!!"
    else
        echo "cpu ok!!!"
fi



###################### monitoring memory############

mem_free=`free -m | grep "Mem" | awk '{print $4+$6}'`
 echo "memory space remaining : $mem_free MB"
if [ $mem_free -lt $mem_threshold  ]
    then
        echo "mem warning!!!"
    else
        echo "mem ok!!!"
fi


############### disk space ########################

disk_df=`df -h | grep -E "/dev/sda1" | awk '{print $5}'| cut  -b 1,2`

echo "disk space remaining : $disk_df % "

if [ $disk_df -gt $disk_threshold ]
     then
          echo "disk warning!!!"
     else
          echo "disk ok!!!"
fi



list_dir=`ls -lrt | grep  -E "^d" | du -h | sort -hr | head -n 10`

echo "$list_dir"
