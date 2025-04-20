terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket       = "nva-bucket-for-tfbackend"
    key          = "backend/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
