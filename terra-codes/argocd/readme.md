# Argo CD:

Argo CD is a declarative, GitOps-based continuous delivery tool for Kubernetes

The argocd folder contains all the Terraform scripts required to spin up an EKS cluster using the latest version (1.32.0) along with a worker node group named "2". 

After provisioning, Argo CD pods are deployed on the worker nodes within a namespace called argocd
