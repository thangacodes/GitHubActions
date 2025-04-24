terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket       = "tfbackend-for-argocd-project"
    key          = "backend/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
