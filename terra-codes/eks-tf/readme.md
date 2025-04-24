Folder structure:

.
├── backend.tf

├── main.tf

├── modules

│   ├── eks

│   │   ├── main.tf

│   │   ├── outputs.tf

│   │   └── variables.tf

│   ├── iam

│   │   ├── main.tf

│   │   ├── outputs.tf

│   │   └── variables.tf
│   └── vpc

│       ├── main.tf

│       ├── outputs.tf

│       └── variables.tf

├── outputs.tf

├── providers.tf

└── variables.tf

4 directories, 14 files

# Usage:

How to Clone and Run Terraform Commands?

1) Clone the repository:
   
   git clone https://github.com/thangacodes/GitHubActions.git
   
3) Navigate to the directory where terraform scripts is exist:

   cd GitHubActions/terra-codes/eks-tf
   
4) Make use of terraform init script:

   [tf-init-script](https://github.com/thangacodes/terraform_usecases)

Please note: You may update the variables.tf and main.tf files in the root module to reflect your specific requirements..
