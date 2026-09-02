#sg
variable "sg_name" {
  type = string
  description = "security_group_name"
  default = "main_sg"
}

variable "sg_vpc_id" {
  type = string
  description = "vpc id for security group"
}

variable "sg_tag_name" {
  type = string
  description = "security_group_name"
  default = "main_sg"
}

#sg ingress
variable "sg_vpc_cidr_block" {
  type = string
  description = "sg_vpc_cidr_block"
}
