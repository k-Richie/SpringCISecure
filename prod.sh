#!/bin/bash

read -p "Enter folder name: " folder_name
echo "Wait........."
if [ -d "$folder_name" ]; then
  cd "$folder_name"
  if [ -f "dev.json" ]; then
    aws cloudformation deploy --template-file cfn.yaml --parameter-overrides file://dev.json  --stack-name "$folder_name" --capabilities CAPABILITY_NAMED_IAM --region us-east-1
  else
    aws cloudformation deploy --template-file cfn.yaml --stack-name "$folder_name" --capabilities CAPABILITY_NAMED_IAM --region us-east-1
  fi
else
  echo "Folder not found: $folder_name"
fi
