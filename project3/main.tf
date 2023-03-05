provider "aws" {
  region = var.aws_region
}

// START : EC2 Module
module "ec2" {
  source              = "./ec2"
  ec2_instance_name   = var.ec2_instance_name
  ec2_instance_type   = var.ec2_instance_type
  ec2_instance_ami    = var.ec2_instance_ami
  security_group_name = var.security_group_name
}
// END : EC2 Module