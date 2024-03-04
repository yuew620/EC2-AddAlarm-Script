# EC2-AddAlarm-Script


git clone This repository to your AWS CloudShell / Cloud9 or EC2 with role 


open alarm_mul_ec2.sh

modify list_of_items=("i-031XXXXXXX86" "i-031XXXXXXX87" "i-031XXXXXXX88")

input your EC2 list to list_of_items



run alarm_mul_ec2.sh

All Set!!!


Note : If you need send email to customer when alarm triggering , you need to change the script .

Reference : https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/put-metric-alarm.html

