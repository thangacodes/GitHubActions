output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}
output "cluster_arn" {
  value = aws_eks_cluster.this.arn
}
output "ngtags" {
  value = aws_eks_node_group.this.tags_all
}
output "disk_size" {
  value = aws_eks_node_group.this.disk_size
}
