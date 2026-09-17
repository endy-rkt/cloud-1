#vpc
output "vpc_id" {
  description = "vpc_id"
  value       = aws_vpc.vpc_default.id
}

output "vpc_cidr_block" {
  description = "vpc_cidr_block"
  value       = aws_vpc.vpc_default.cidr_block
}

output "vpc_tags" {
  description = "vpc_tag_name"
  value       = aws_vpc.vpc_default.tags
}

#subnet
output "subnet_id" {
  description = "subnet_id"
  value       = aws_subnet.subnet_example.id
}

output "subnet_cidr_block" {
  description = "subnet_cidr_block"
  value       = aws_subnet.subnet_example.cidr_block
}

output "subnet_tags" {
  description = "subnet_tags"
  value       = aws_subnet.subnet_example.tags
}

#gw
output "gw_id" {
  description = "gw_id"
  value       = aws_internet_gateway.gw_example.id
}

#route
output "route_table_id" {
  description = "route_table_id"
  value       = aws_route_table.route_table_example.id
}
