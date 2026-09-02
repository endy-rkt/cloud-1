variable "vpc_cidr_block" {
  type = string
  description = "ip range for vpc_cidr_block"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  description = "vpc_name"
  default = "main"
}