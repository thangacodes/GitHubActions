data "aws_iam_policy_document" "eks_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}
data "aws_iam_policy_document" "nodes_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}
resource "aws_iam_role" "eks" {
  name = var.eks_role_name
  assume_role_policy = data.aws_iam_policy_document.eks_assume_role.json
}
resource "aws_iam_role_policy_attachment" "eks_policy" {
  role       = aws_iam_role.eks.name
  policy_arn = var.eks_policy
}
resource "aws_iam_role" "nodes" {
  name = var.node_role_name
  assume_role_policy = data.aws_iam_policy_document.nodes_assume_role.json
}
resource "aws_iam_role_policy_attachment" "node_policy" {
  role       = aws_iam_role.nodes.name
  policy_arn = var.node_policy
}
resource "aws_iam_role_policy_attachment" "cni_policy" {
  role       = aws_iam_role.nodes.name
  policy_arn = var.cni_policy
}
resource "aws_iam_role_policy_attachment" "registry_policy" {
  role       = aws_iam_role.nodes.name
  policy_arn = var.registry_policy
}
