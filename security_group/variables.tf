variable "name" {
  description = "Name of the Tag or resource Name"
  type = string
}

variable "tags" {
  description = "Additional resource tags"
  type = map(string)
  default = {}
}

variable "vpc_id" {
  description = "Parent VPC ID"
  type = string
}

variable "ssh_cidr" {
  
}