
output "ec2_instance_id" {
  description = "ID of EC2 instance"
  value       = module.ec2.instance_id
}

output "ec2_instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = module.ec2.instance_public_ip
}

output "ec2_instance_public_dns" {
  description = "Public DNS of EC2 instance"
  value       = module.ec2.instance_public_dns
}

output "ec2_sg_name" {
  description = "Name of Security Group"
  value       = module.ec2.sg_name
}

output "ec2_sg_arn" {
  description = "ARN of Security Group"
  value       = module.ec2.sg_arn
}

output "ec2_eip_public_ip" {
  description = "Elastic IP of the EC2 Instance"
  value       = module.ec2.eip_public_ip
}