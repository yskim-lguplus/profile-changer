#!/bin/bash

~/.aws/bin/clear-credentials.sh
~/.aws/bin/clear-cache.sh

IAM_USER_NAME=

echo "IAM User ${IAM_USER_NAME} configured."
cp ~/.aws/lib/credentials-${IAM_USER_NAME} ~/.aws/credentials
cp ~/.aws/lib/config-${IAM_USER_NAME} ~/.aws/config
