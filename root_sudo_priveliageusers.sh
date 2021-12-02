#!/usr/bin


if [[ whoami -eq minfy ]]
then
    echo "print your minfy user"
else
    echo "your not minfy user"
fi

`sudo -v 2>&1 1>/dev/null`

if [[ $? == 0 ]]
then
    echo "you have root  permissions"
else
    echo "your are not root user"
fi
