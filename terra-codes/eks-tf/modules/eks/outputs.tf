output "cluster_endpoint" {
  value = aws_eks_cluster.argocd.endpoint
}
output "cluster_arn" {
  value = aws_eks_cluster.argocd.arn
}
output "eksCluster-SGPId" {
  description = "EKS cluster Security Group ID"
  value       = aws_security_group.eks.id
}
output "eksNodes-SGPId" {
  description = "EKS nodes custom Security Group ID"
  value       = aws_security_group.nodes.id
}
output "ngtags" {
  value = aws_eks_node_group.argocd.tags_all
}
output "disk_size" {
  value = aws_eks_node_group.argocd.disk_size
}
