output "ngtags" {
  value = aws_eks_node_group.argocd.tags_all
}

output "disk_size" {
  value = aws_eks_node_group.argocd.disk_size
}

output "cluster_endpoint" {
  value = aws_eks_cluster.argocd.endpoint
}

output "cluster_arn" {
  value = aws_eks_cluster.argocd.arn
}
