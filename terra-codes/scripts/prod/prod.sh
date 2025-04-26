#!/bin/bash

# Exit on error
set -e

## Variables
BUCKET_NAME="tfbackend-for-argocd-project"
REGION="ap-south-1"
FOLDER="backend"
echo "Script executed at: $(date '+%Y-%m-%d %H:%M:%S')"
echo "AWS CLI to create or delete S3 bucket: ${BUCKET_NAME}"
#User Input
read -p "What operation would you like to perform (create or delete): " ACTION
echo "User entered action is:" $ACTION
if [[ $ACTION == "create" ]]; then
  echo "S3 bucket creation in progress..."
  aws s3api create-bucket \
    --bucket "$BUCKET_NAME" \
    --region "$REGION" \
    --create-bucket-configuration LocationConstraint="$REGION"
  aws s3api put-object \
    --bucket "$BUCKET_NAME" \
    --key "$FOLDER/" \
    --region "$REGION"
  aws s3api get-bucket-location --bucket "$BUCKET_NAME"
  aws s3 ls "$BUCKET_NAME" --region "$REGION"
elif [[ $ACTION == "delete" ]]; then
  echo "S3 bucket deletion in progress..."
  aws s3 ls "$BUCKET_NAME"
  aws s3 rm s3://"$BUCKET_NAME" --recursive --region "$REGION"
  aws s3api delete-bucket --bucket "$BUCKET_NAME" --region "$REGION"
  echo "Cross-checking whether the bucket '${BUCKET_NAME}' has been deleted or not"
  aws s3 ls --region "$REGION"
fi
echo "S3 bucket: ${BUCKET_NAME} is created...."
# Step 1: Terraform init
read -p "Do you want to perform 'terraform init'? (yes/no): " TFINIT
if [[ "$TFINIT" == "yes" || "$TFINIT" == "YES" ]]; then
    echo "Running terraform init..."
    terraform init
else
    echo "Skipping terraform init."
fi
# Step 2: Terraform plan
read -p "Do you want to perform 'terraform plan'? (yes/no): " TFPLAN
if [[ "$TFPLAN" == "yes" || "$TFPLAN" == "yes" ]]; then
    echo "Running terraform plan..."
    terraform plan -out=tfplan
else
    echo "Skipping terraform plan."
fi
# Step 3: Terraform apply or destroy
read -p "Do you want to apply or destroy? (apply/destroy): " ACTION
if [[ "$ACTION" == "apply" || "$ACTION" == "apply" ]]; then
    echo "Running terraform apply..."
    terraform apply tfplan
elif [[ "$ACTION" == "destroy" || "$ACTION" == "destroy" ]]; then
    echo "Running terraform destroy..."
    terraform destroy --auto-approve
else
    echo "Invalid input. Please enter 'apply' or 'destroy'."
fi
echo "Script is executed done."
exit 0
