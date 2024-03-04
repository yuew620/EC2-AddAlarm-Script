# EC2-AddAlarm-Script

For AWS EC2 High Availability，We have 3 protection

Option1、AWS EC2  simple Auto Recovery

Option2、Manually Configure AWS EC CloudWatch Alarm，and Trigger reboot

Option33、Send metric to Prometheus and trigger alarm， customer operation enginneer reboot EC2 manually。

For option2

A script here can help create alarm when we have hunderds EC2。

Script User Guide：

git clone This repository to your AWS CloudShell / Cloud9 or EC2 with role 


open alarm_mul_ec2.sh

modify list_of_items=("i-031XXXXXXX86" "i-031XXXXXXX87" "i-031XXXXXXX88")

input your EC2 list to list_of_items



run alarm_mul_ec2.sh

All Set!!!


Note : If you need send email to customer when alarm triggering , you need to change the script .

Reference : https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/put-metric-alarm.html
https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/UsingAlarmActions.html#AddingRebootActions
