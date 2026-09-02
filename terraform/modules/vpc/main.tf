resource "aws_vpc" "vpc_example" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet_example" {
  vpc_id = var.subnet_vpc_id
  cidr_block = var.subnet_cidr_block
  map_public_ip_on_launch = var.subnet_map_public_ip
  
  tags = {
    Name = var.subnet_name
  }
}

#internet gateway to add
