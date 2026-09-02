variable "aws_region" {
    type = string
    description = "AWS region"
    default = "us-east-1"
}

variable "aws_profile" {
  type = string
  description = "profile uses for aws"
}

variable "aws_role_arn" {
  type = string
  description = "aws arn role"
}
