module "vpc" {
  source = "../../modules/vpc" 
}

module "security_group" {
  source = "../../modules/security_group"
  sg_vpc_id = module.vpc.vpc_id
  sg_vpc_cidr_block = module.vpc.vpc_cidr_block
}

module "web_server" {
  source = "../../modules/ec2"
  ec2_public_key = var.aws_default_pub_key
  ec2_subnet_id = module.vpc.subnet_id
  ec2_vpc_security_group_ids = module.security_group.sg_id
}
