#!/bin/bash
echo "AWS CLI run for S3 related operations..."
# Fetch AWS region from GitHub repository settings variable
AWS_REGION="${{ vars.AWS_REGION }}"
# Check if the variable is not empty
if [ -z "$AWS_REGION" ]; then
  echo "Error: AWS_REGION variable is not set."
  exit 1
fi
# Create the S3 bucket
aws s3api create-bucket \
  --bucket tfbackend-for-argocd-project \
  --region "$AWS_REGION" \
  --create-bucket-configuration LocationConstraint="$AWS_REGION"
# Create a folder called backend
aws s3api put-object \
  --bucket tfbackend-for-argocd-project \
  --key "backend/" \
  --region "$AWS_REGION"
# Get the bucket location
aws s3api get-bucket-location --bucket tfbackend-for-argocd-project --region "$AWS_REGION"

# # Remove all objects from the S3 bucket
# aws s3 rm s3://tfbackend-for-argocd-project --recursive --region "$AWS_REGION"
# # Delete the S3 bucket
# aws s3api delete-bucket --bucket tfbackend-for-argocd-project --region "$AWS_REGION"
