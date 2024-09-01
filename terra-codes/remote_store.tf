terraform {
  backend "s3" {
    bucket         = "gitops-demo-bucket-tf"
    key            = "remote-state/dev.tfstate"
    region          = "ap-south-1"
  }
}
