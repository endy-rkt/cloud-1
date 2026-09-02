output "instance_id" {
  value       = aws_instance.ec2_server.id
  description = "The ID of the created EC2 instance."
}

output "root_volume_id" {
  value       = aws_instance.ec2_server.root_block_device[0].volume_id
  description = "The volume ID of the root block device."
}

output "public_ip" {
  value       = aws_instance.ec2_server.public_ip
  description = "The public IP address assigned to the EC2 instance."
}
