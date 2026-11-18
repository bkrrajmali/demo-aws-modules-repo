resource "aws_instance" "this" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  root_block_device {
    volume_type = "gp3"
    volume_size = var.volume_size
    encrypted = true
    delete_on_termination = true
  }
   tags = merge(var.tags, {Name = var.name})
}