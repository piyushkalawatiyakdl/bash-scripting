#!/bin/bash

###########
#
# Name: Piyush Kalawatiya
# Date : 06-12-23
# 
# version : v1
#
# Description: this script will get resources in aws.
#
##########

set -x

echo "Print s3 buckets"
aws s3 ls

echo "list available instances"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId"



echo "list lambda functions"

aws lambda list-functions


echo "list iam users in aws"
aws iam list-users | jq ".Users[].UserName"



