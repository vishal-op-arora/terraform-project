// START: Security Group Creation
module "sg" {
  source = "../sg"

  security_group_name = var.security_group_name
  ingress_ports       = [80, 8080, 443]
  egress_ports        = [80, 8080, 443]

}
// END : Security Group Creation

// START : EC2 instance creation
resource "aws_instance" "ec2_web_server" {
  ami             = var.ec2_instance_ami
  instance_type   = var.ec2_instance_type
  security_groups = [var.security_group_name]
  
  tags = {
    Name = var.ec2_instance_name
  }

  user_data = <<EOF
    #! /bin/bash
    sudo su
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    yum install -y epel-release
    yum update -y
    yum install nginx -y
    systemctl start nginx
    systemctl enable nginx
	EOF

}
// END : EC2 instance creation

// Start : Elatic IP  
module "eip" {
  source                 = "../eip"
  attach_ec2_instance_id = aws_instance.ec2_web_server.id
}
// Start : Elatic IP 