resource "aws_vpc" "vpc_default" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gw_example" {
  vpc_id = aws_vpc.vpc_default.id

  tags = {
    Name = var.gw_tag_name
  }
}

resource "aws_route_table" "route_table_example" {
  vpc_id = aws_vpc.vpc_default.id

  route {
    cidr_block = var.route_table_incoming_cidr_block
    gateway_id = aws_internet_gateway.gw_example.id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_subnet" "subnet_example" {
  vpc_id                  = aws_vpc.vpc_default.id
  cidr_block              = var.subnet_cidr_block
  map_public_ip_on_launch = var.subnet_map_public_ip

  tags = {
    Name = var.subnet_name
  }
}
