variable "region" {
  description = "The DC where we provision aws resources virtually"
  type        = string
  default     = "ap-south-1"
}
variable "ssh_key_name" {
  type = string
  default = "mac"
}
