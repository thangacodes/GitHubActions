variable "region" {
  type        = string
  description = "The region where we deploy aws resources"
}
variable "vm_spec" {
  type        = string
  description = "EC2 instance configuration"
}
variable "sshkey" {
  type        = string
  description = "To connect remote machine via password less mechanism"
}
variable "virtualfirewall" {
  type        = string
  description = "Allow/Deny the ports with the help of firewall"
}
variable "tagging" {
  default = {
    Environment  = "Development"
    CreationDate = "01/09/2024"
    Owner        = "thangadurai.murugan@cloudbird.fun"
    ProjectId    = "cloudbird"
  }
}
