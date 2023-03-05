output "eip_public_ip" {
    description = "Elastic IP of the EC2"
  value = aws_eip.my_eip.public_ip
}