#!/bin/bash


last_loginusers=`last | awk '{print $1,$5,$6,$7,$8,$9,$10}' | grep -vE "reboot" | head -n 2`

echo "these are last logged users inthis system: $last_loginusers"
