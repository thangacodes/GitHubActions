output "eks_role_arn" {
  value = aws_iam_role.eks.arn
}

output "node_role_arn" {
  value = aws_iam_role.nodes.arn
}
