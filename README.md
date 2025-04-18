
# Github-actions-workflows:
The integration of GitHub Actions workflows with Terraform-related tools, including TFLint and TFsec, has been successfully completed.

# TFLINT:

TFLint helps in identifying potential errors and violations of best practices in your Terraform configurations before applying them.

$ brew install tflint            //Install tflint on mac using brew

$ tflint --version

TFLint version 0.53.0
ruleset.terraform (0.9.1-bundled)

# TFSEC: 

TFsec uses static analysis of your Terraform code to identify potential security issues.

$ brew install tfsec             //Install tfsec on mac using brew

$ tfsec --version
v1.28.10

# Reference links:

1) [tflint](https://github.com/terraform-linters/tflint)
2) [tfsec](https://github.com/aquasecurity/tfsec)

Terraform scripts are stored in the terra-codes folder, while OIDC roles with IAM policies are managed in the AWS_IAM_ROLE_POLICY folder.

The following components are required to integrate OpenID Connect (OIDC) with GitHub Actions on AWS:

a) A custom trust policy for the IAM role

b) Inline policies for the services you want to communicate with via GitHub Actions

In this example, the IAM role has access to AWS services such as EC2 and S3 buckets.
