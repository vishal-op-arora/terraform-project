resource "aws_eip" "my_eip" {
  instance = var.attach_ec2_instance_id
}