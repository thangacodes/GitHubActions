provider "aws" {
  region = var.region

  default_tags {
    tags = {
      CostCenter   = "100232432"
      Environment  = "Development"
      ProjectName  = "ArgoCd-Development"
      Owner        = "Thangadurai.murugan@example.com"
      Creationdate = "22/04/2025"
    }
  }
}
