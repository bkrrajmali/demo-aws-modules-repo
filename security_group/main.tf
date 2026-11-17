resource "aws_security_group" "this" {
  name_prefix = "${var.name}-"
  description = "Ssh and HTTP access for Ec2"
  vpc_id = var.vpc_id
  tags = merge(var.tags, {Name = var.name})
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.this.id
  description = "SSH from the admintered network"
  cidr_ipv4 = var.ssh_cidr
  from_port = 22
  to_port = 22
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.this.id
  description = "HTTP from the admintered network"
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  to_port = 80
  ip_protocol = "tcp"
}


resource "aws_vpc_security_group_egress_rule" "all" {
  security_group_id = aws_security_group.this.id
  description = "Allow Outbound Traffic"
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}