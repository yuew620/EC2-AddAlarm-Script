#!/bin/bash
# 设置变量
INSTANCE_ID="i-010****48b2d" 
# 替换为你的EC2实例ID\n
ALARM_NAME="ec2-recover-${INSTANCE_ID}"
ACTION_NAME="arn:aws:automate:us-east-1:ec2:recover" 
# 根据你的区域进行替换

NAMESPACE="AWS/EC2"
METRIC_NAME="StatusCheckFailed_System"
COMPARISON_OPERATOR="GreaterThanThreshold"
EVALUATION_PERIODS="2"
THRESHOLD="0"
PERIOD="60"
STATISTIC="Minimum"

# 创建或更新CloudWatch Alarm StatusCheckFailed_System
aws cloudwatch put-metric-alarm  --alarm-name "$ALARM_NAME"  --metric-name "$METRIC_NAME"  --namespace "$NAMESPACE"   --statistic "$STATISTIC"   --dimensions Name=InstanceId,Value="$INSTANCE_ID"   --period "$PERIOD"  --evaluation-periods "$EVALUATION_PERIODS"   --threshold "$THRESHOLD"   --comparison-operator "$COMPARISON_OPERATOR"   --alarm-actions "$ACTION_NAME" --region us-east-1

ALARM_NAME_REBOOT="ec2-reboot-${INSTANCE_ID}"
ACTION_NAME_REBOOT="arn:aws:automate:us-east-1:ec2:reboot"
METRIC_NAME_REBOOT="StatusCheckFailed_Instance"
EVALUATION_PERIODS_REBOOT="3"

# 创建或更新CloudWatch Alarm for Reboot StatusCheckFailed_Instance
aws cloudwatch put-metric-alarm  --alarm-name "$ALARM_NAME_REBOOT"  --metric-name "$METRIC_NAME_REBOOT"  --namespace "$NAMESPACE"   --statistic "$STATISTIC"   --dimensions Name=InstanceId,Value="$INSTANCE_ID"   --period "$PERIOD"  --evaluation-periods "$EVALUATION_PERIODS_REBOOT"   --threshold "$THRESHOLD"   --comparison-operator "$COMPARISON_OPERATOR"   --alarm-actions "$ACTION_NAME_REBOOT" --region us-east-1
