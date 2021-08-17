
terraform {
  backend "local" {
    path = ".terraform-state/terraform.tfstate"
  }
}

provider "aws" {
  region = var.region
}
