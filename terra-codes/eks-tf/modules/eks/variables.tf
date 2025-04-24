variable "name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "cluster_role_arn" {}
variable "node_role_arn" {}
variable "node_desired" {}
variable "node_max" {}
variable "node_min" {}
variable "node_instance_types" {
  type = list(string)
}
variable "ssh_key_name" {}
