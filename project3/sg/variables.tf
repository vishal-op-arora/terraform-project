variable "security_group_name" {
  type = string
}

variable "ingress_ports" {
  type = list(number)
}

variable "egress_ports" {
  type = list(number)
}