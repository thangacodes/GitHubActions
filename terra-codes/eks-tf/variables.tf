variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for EKS node group remote access"
  type        = string
  default     = "mac"
}
