module "vpc" {
  source     = "./modules/vpc"
  name       = "argocd"
  cidr_block = "150.0.0.0/16"
  subnet_azs = ["ap-south-1a", "ap-south-1b"]
}

module "iam" {
  source          = "./modules/iam"
  eks_role_name   = "argocd-cluster-role"
  node_role_name  = "argocd-node-group-role"
  eks_policy      = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  node_policy     = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  cni_policy      = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  registry_policy = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

module "eks" {
  source              = "./modules/eks"
  name                = "argocd"
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.subnet_ids
  cluster_role_arn    = module.iam.eks_role_arn
  node_role_arn       = module.iam.node_role_arn
  node_desired        = 2
  node_min            = 2
  node_max            = 2
  node_instance_types = ["t2.medium"]
  ssh_key_name        = var.ssh_key_name
}
