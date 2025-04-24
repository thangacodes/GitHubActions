output "ngtags" {
  value = aws_eks_node_group.argocd.tags_all
}

output "disk_size" {
  value = aws_eks_node_group.argocd.disk_size
}

output "endpoint" {
  value = aws_eks_cluster.argocd.endpoint
}
