#!/bin/sh

# How to Test get token.
# ./get-token.sh [mfa device token]

AWS_ACCOUNT_ID=
IAM_USER_NAME=
AWS_PROFILE="default"
MFA_DEVICE_ARN="arn:aws:iam::${AWS_ACCOUNT_ID}:mfa/${IAM_USER_NAME}"

echo $1

aws sts get-session-token \
--profile ${AWS_PROFILE} \
--output json \
--duration-seconds=36000 \
--serial-number="${MFA_DEVICE_ARN}" \
--token-code=$1 > token-test.json

exit 0
