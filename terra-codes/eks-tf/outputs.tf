output "eks_public_endpoint" {
  description = "EKS cluster public API endpoint"
  value       = module.eks.cluster_endpoint
}
output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = module.eks.cluster_arn
}
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}
output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = module.vpc.subnet_ids
}
output "vpc_RT_id" {
  description = "Route Table Id"
  value       = module.vpc.routeTable-id
}

output "SGPId-for-eks" {
  description = "EKS cluster Security Group Id"
  value       = module.eks.eksCluster-SGPId
}

output "SGPId-for-eksNodes" {
  description = "EKS NodeGroup Security Group Id"
  value       = module.eks.eksNodes-SGPId
}
