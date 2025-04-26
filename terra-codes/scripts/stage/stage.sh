#!/bin/bash
echo "Script executed at: $(date '+%Y-%m-%d %H:%M:%S')"
## Variables
BUCKET_NAME="tfbackend-for-argocd-project"
REGION="ap-south-1"
FOLDER="backend"
# Use environment variable instead of positional $1
ACTION="${ACTION}"
echo "DEBUG: ACTION=${ACTION}"
# read -p "What operation would you like to perform (create or delete): " ACTION
echo "User entered action is:" $ACTION
echo " aws cli run for s3 related.."
if [[ -z "$ACTION" ]]; then
  echo "Error: No action specified. Use 'create' or 'delete' as the first argument."
  exit 1
fi
echo "User entered action is: $ACTION"
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
else
  echo "Invalid action: $ACTION. Use 'create' or 'delete'."
  exit 1
fi
exit 0
