resource "aws_launch_template" "launch_config" {
  name     = "launch-config-template-for-worker"
  key_name = "mac"
  block_device_mappings {
    device_name = "/dev/xvda"
    ebs {
      volume_size           = 20
      volume_type           = "gp3"
      delete_on_termination = true
    }
  }

  tags = {
    Name        = "launch-config-template-for-worker"
    Environment = "Sandbox"
  }
}
resource "aws_eks_node_group" "node_group" {
  cluster_name    = var.EKS_CLUSTER_NAME
  node_group_name = "${var.EKS_CLUSTER_NAME}-node_group"
  node_role_arn   = var.NODE_GROUP_ARN

  subnet_ids = [
    var.PRI_SUB3_ID,
    var.PRI_SUB4_ID
  ]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }

  ami_type             = "AL2_x86_64"
  capacity_type        = "ON_DEMAND"
  force_update_version = false

  launch_template {
    id      = aws_launch_template.launch_config.id
    version = "$Latest"
  }

  labels = {
    role = "${var.EKS_CLUSTER_NAME}-Node-group-role"
    name = "${var.EKS_CLUSTER_NAME}-node_group"
  }
}
