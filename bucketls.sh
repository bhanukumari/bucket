#!/bin/bash
BUCKET_NAME="bp-23"
PREFIX=""
# List the contents of the bucket
echo "Listing contents of bucket: $BUCKET_NAME"
#test
# If you have a prefix, include it in the command
if [ -n "$PREFIX" ]; then
  aws s3 ls s3://$BUCKET_NAME/$PREFIX --recursive | awk '{print $4}'
else
  # If PREFIX is not set, list all contents in the bucket
  aws s3 ls s3://$BUCKET_NAME --recursive | awk '{print $4}'
fi
