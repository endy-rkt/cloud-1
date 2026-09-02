variable "ec2_instance_type" {
  type = string
  description = "type of instance used in ec2"
  default = "t3.micro"
}

variable "ec2_ami" {
  type = string
  description = "type of ami used in ec2"
  default = "ami-0c7217cdde317cfec" #Ubuntu 22.04 LTS (Jammy), AMD64/x86_64, us-east-1
}

variable "ec2_key_name" {
  type = string
  description = "Key name of the Key Pair to use for the instance like local machine to instance"
}

variable "ec2_subnet_id" {
  type = string
  description = "subnet id used in ec2"
}

variable "ec2_vpc_security_group_ids" {
  type = list(string)
  description = "vpc_security_group_ids"
}

variable "ec2_associate_public_ip_address" {
    type = string
    description = "associate_public_ip_address"
    default = true
}

variable "ec2_resource_name" {
  type = string
  description = "ec2_resource_name"
  default = "demo"
}

variable "ec2_root_block_volume_size" {
  type = number
  description = "ec2_root_block_volume_size"
  default = 30
}

variable "ec2_root_block_volume_type" {
  type = string
  description = "ec2_root_block_volume_type"
  default = "gp3"
  
  validation {
    condition = contains(["standard", "gp2", "gp3", "io1", "io2"], var.ec2_root_block_volume_type)
    error_message = "The root volume type must be standard, gp2, gp3, io1, or io2."
  }
}

variable "ec2_root_block_iops" {
  type = number
  description = "ec2_root_block_iops"
  default = 3000
}

variable "ec2_root_block_delete_on_termination" {
  type = bool
  description = "ec2_root_block_delete_on_termination"
  default = true
}

#key pair
variable "ec2_key_name" {
  type = string
  description = "key name for the key pair used in ec2"
  default = "deployer-key"
}

variable "ec2_public_key" {
  type = string
  description = "public key for the key pair used in ec2"
}
