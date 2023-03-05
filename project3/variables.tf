variable "aws_region" {
  description = "Subnet id for web server EC2 instance"
  type        = string
}

variable "security_group_name" {
  type = string
}

variable "ec2_instance_name" {
  type = string
}
variable "ec2_instance_type" {
  type = string
}
variable "ec2_instance_ami" {
  type = string
}