resource "aws_security_group" "sg_example" {
  name = var.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id = var.sg_vpc_id
  
  tags = {
    Name = var.sg_tag_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.sg_example.id
  cidr_ipv4 = var.sg_vpc_cidr_block
  from_port = 22
  ip_protocol = "tcp"
  to_port = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.sg_example.id
  cidr_ipv4 = var.sg_vpc_cidr_block
  from_port = 443
  ip_protocol = "tcp"
  to_port = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.sg_example.id
  cidr_ipv4 = var.sg_vpc_cidr_block
  from_port = 80
  ip_protocol = "tcp"
  to_port = 80
}
