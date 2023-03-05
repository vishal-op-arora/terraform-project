output "sg_arn" {
    description = "ARN of Security Group"
  value = aws_security_group.my_security_group.arn
}

output "sg_name" {
    description = "Name of Security Group"
  value = aws_security_group.my_security_group.name
}