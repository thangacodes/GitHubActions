
# Github Actions:
The integration of GitHub Actions workflows with Terraform-related tools, including TFLint and TFsec, has been successfully completed.

# TFLINT:
TFLint helps in identifying potential errors and violations of best practices in your Terraform configurations before applying them.

$ brew install tflint            (Installing tflint on macOS Sequoia)

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
3) [tflint-ruleset-terraform](https://github.com/terraform-linters/tflint-ruleset-terraform)

Terraform scripts are stored in the terra-codes folder, while OIDC roles with IAM policies are managed in the AWS_IAM_ROLE_POLICY folder.

The following components are required to integrate OpenID Connect (OIDC) with GitHub Actions on AWS:

a) A custom trust policy for the IAM role

b) Inline policies for the services you want to communicate with via GitHub Actions

In this example, the IAM role has access to AWS services such as EC2 and S3 buckets.

# GitHub Action:

Also, GitHub Action workflow YAML files are kept in the directory.

[GH Action Workflow](https://github.com/thangacodes/GitHubActions-repo/tree/main/.github/workflows)

Navigate to Flask App dir

[FlaskApp](https://github.com/thangacodes/GitHubActions-repo/tree/main/flaskapp)

Sample YAML files for setting up GitHub Actions workflows.

[yamlfiles](https://github.com/thangacodes/GitHubActions-repo/tree/main/sampleyaml)

Simple Terraform scripts to test TFLint

[terracode](https://github.com/thangacodes/GitHubActions-repo/tree/main/terra-codes)

# Multiple CICD environment

This is to create infrastructure resources using GitHub Actions and a CI/CD method for various environments such as dev, stage, and prod.

[.github/workflows/multi_deployment](https://github.com/thangacodes/GitHubActions/blob/main/.github/workflows/dep.yaml)

# Node.js

Navigate to Node.js script folder

[node.js](https://github.com/thangacodes/GitHubActions-repo/tree/main/nodejs)
