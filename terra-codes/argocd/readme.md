# Argo CD:

Argo CD is a declarative, GitOps-based continuous delivery tool for Kubernetes. Detailed information to be found in [argo cd](https://argo-cd.readthedocs.io/en/stable/)

The argocd folder contains all the Terraform scripts required to spin up an EKS cluster using the latest version (1.32.0) along with a worker node group named "2". 

After provisioning, Argo CD pods are deployed on the worker nodes within a namespace called argocd.

How do I use this Terraform script to deploy an EKS cluster?

It's a public repository anyone can make use of this repository to provision/setup EKS cluster in AWS. Please follow the process,

1) Clone the repository
   git clone [argocd repo](https://github.com/thangacodes/GitHubActions-repo.git)

2) Navigate to the directory containing the Terraform script
   cd terra-codes/argocd

3) Run the Terraform commands as shown below,

   terraform init
   
   terraform validate
   
   terraform plan
   
   terraform apply --auto-approve
   
   terraform destroy --auto-approve

# Please note: Change the VPC CIDR, subnet ranges, cluster name, and tag information as per your preferences
   
   
