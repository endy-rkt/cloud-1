resource "aws_subnet" "example_subnet" {
  vpc_id = var.subnet_vpc_id
  cidr_block = var.subnet_cidr_block
  map_public_ip_on_launch = var.subnet_map_public_ip
  
  tags = {
    Name = var.subnet_name
  }
}
