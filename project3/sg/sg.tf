resource "aws_security_group" "my_security_group" {

  name = var.security_group_name

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = ingress_port

    content {
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = ingress_port.value
      protocol    = "TCP"
      to_port     = ingress_port.value
    }
  }


  dynamic "egress" {

    for_each = var.egress_ports
    iterator = egress_port
    content {
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = egress_port.value
      protocol    = "TCP"
      to_port     = egress_port.value
    }
  }
}