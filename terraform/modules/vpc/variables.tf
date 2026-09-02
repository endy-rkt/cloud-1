#vpc
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

#subnet
variable "subnet_vpc_id" {
  type = string
  description = "subnet_vpc_id"
}

variable "subnet_cidr_block" {
  type = string
  description = "subnet_vpc_id"
  default = "10.0.1.0/24"  
}

variable "subnet_map_public_ip" {
    type = bool
    description = "allow map public ip on launch"
    default = true
}

variable "subnet_name" {
  type = string
  description = "subnet_name"
  default = "main_sub"
}

#gw
variable "gw_tag_name" {
  type = string
  description = "gw_tag_name"
  default = "main_gw"
}

#route table
variable "route_table_name" {
  type = string
  description = "route_table_name"
  default = "main_route_table"
}

variable "route_table_incoming_cidr_block" {
  type = string
  description = "route_table_incoming_cidr_block"
  default = "0.0.0.0/0"
}
