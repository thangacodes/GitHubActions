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
