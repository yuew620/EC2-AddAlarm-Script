#!/bin/bash

source ./alarm_one_ec2_fun.sh

#输入EC2列表
list_of_items=("i-031XXXXXXX86" "i-031XXXXXXX87" "i-031XXXXXXX88")

#循环遍历列表
for item in "${list_of_items[@]}"; 
do
echo "add alarm for $item"
alarm_one_ec2_fun "$item"
done

echo "Finish"