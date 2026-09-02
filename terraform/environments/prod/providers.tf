#need to add profile and role
terraform {
  required_version = "~> 1.15.0"
  required_providers {
    source  = "hashicorp/aws"
    version = "~> 6.0"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
  assume_role {
    role_arn = var.aws_role_arn
  }
}
