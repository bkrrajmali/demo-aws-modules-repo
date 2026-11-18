variable "ami" {
  description = "Name of the Tag or resource Name"
  type = string
}

variable "tags" {
  description = "Additional resource tags"
  type = map(string)
  default = {}
}

variable "instance_type" {
  description = "Instance type"
}
variable "key_name" {}
variable "vpc_security_group_ids" {}
variable "subnet_id" {}

variable "associate_public_ip_address" {}

variable "volume_size" {}

variable "name" {}
 
  