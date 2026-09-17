variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "profile uses for aws"
}

variable "aws_role_arn" {
  type        = string
  description = "aws arn role"
}

variable "aws_default_pub_key" {
  type        = string
  description = "default key to allow ec2 to host comm"
}
