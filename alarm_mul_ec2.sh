#!/bin/bash

source ./alarm_one_ec2_fun.sh

#输入EC2列表
list_of_items=("item1" "item2" "item3" "item4")

#循环遍历列表
for item in "${list_of_items[@]}"; 
do
echo "add alarm for $item"
alarm_one_ec2_fun "$item"
done

echo "Finish"