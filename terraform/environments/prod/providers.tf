terraform {
    required_version = "~> 1.15.0"
    required_providers {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
}

provider "aws" {
    region = var.aws_region
}
