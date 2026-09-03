data "aws_ami" "ubuntu_22_04" {
  most_recent = true
  owners      = ["099720109477"] # Official Canonical Owner ID

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


module "vpc" {
  source = "../../modules/vpc"
}

module "security_group" {
  source            = "../../modules/security_group"
  sg_vpc_id         = module.vpc.vpc_id
  sg_vpc_cidr_block = module.vpc.vpc_cidr_block
}

module "web_server" {
  source                     = "../../modules/ec2"
  ec2_instance_type          = "t3.small"
  ec2_ami                    = data.aws_ami.ubuntu_22_04
  ec2_public_key             = var.aws_default_pub_key
  ec2_subnet_id              = module.vpc.subnet_id
  ec2_vpc_security_group_ids = module.security_group.sg_id
}
