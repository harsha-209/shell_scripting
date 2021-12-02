#!/usr/bin

read -p "please enter your required service name to check status: " service_status


echo "$service_status"


if [[ `sudo systemctl status $service_status | grep Active | awk '{print $2}'` == "inactive" ]]
then
    echo "$service_status is in inactive status"
elif [[ `sudo systemctl status docker | grep -E "active"| awk '{print $2}'`  == "active" ]]
then
    echo "$service_status is already in running  status"
    exit 1 ############ if docker is running then, no need to run below script####
fi



echo "------------------------------to start $service_status ----------------------"

read -p "please give input to start the docker service:  "  option

if [[ $option == "yes" ]]
then
   echo "please wait service is starting now"
   sudo systemctl restart $service_status
else
   echo "you haven't selected for yes option to start the service"
fi
