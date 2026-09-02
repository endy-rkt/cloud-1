resource "aws_key_pair" "key_pair_example" {
  key_name = var.ec2_key_name
  public_key = var.ec2_public_key
}

resource "aws_instance" "ec2_server" {
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name = var.ec2_key_name
  subnet_id = var.ec2_subnet_id
  vpc_security_group_ids = var.ec2_vpc_security_group_ids
  associate_public_ip_address = var.ec2_associate_public_ip_address

  root_block_device {
    volume_size = var.ec2_root_block_volume_size
    volume_type = var.ec2_root_block_volume_type
    iops = var.ec2_root_block_iops
    delete_on_termination = var.ec2_root_block_delete_on_termination
  }

  tags = {
    Name = var.ec2_resource_name
  }
}
