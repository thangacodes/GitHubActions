output "eks_cluster_role_arn" {
  value = aws_iam_role.eks.arn
}

output "nodegroup_role_arn" {
  value = aws_iam_role.nodes.arn
}
