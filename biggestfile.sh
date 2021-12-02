#!/bin/bash

### top 10 biggest directories


read -p  "please enter a path: " my_path

echo "$my_path"

######################333  listing top 10 bigsize files####################################
list_dir=$(`ls -lrt | grep  -E "^d" | du -h | sort -hr | head -n 10`)

#"$list_dir"

#cd  /home  && "$list_dir"


cd "$my_path" &&  ls -lrt | grep  -E "^d" |du -h |sort -hr | head -n 10


