
output "instance_id" {
  description = "ID of EC2 instance"
  value       = aws_instance.ec2_web_server.id
}

output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.ec2_web_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.ec2_web_server.public_dns
}

output "instance_sg" {
    description = "Security Group of EC2 instance"
    value = aws_instance.ec2_web_server.security_groups
}

output "eip_public_ip" {
    description = "Elastic IP of the EC2 Instance"
  value =  module.eip.eip_public_ip
}

output "sg_arn" {
    description = "ARN of Security Group"
  value =  module.sg.sg_arn
}

output "sg_name" {
    description = "Name of Security Group"
  value = module.sg.sg_name
}