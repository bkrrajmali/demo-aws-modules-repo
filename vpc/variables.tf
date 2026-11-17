variable "name" {
  description = "Name of the Tag or resource Name"
  type = string
}

variable "tags" {
  description = "Additional resource tags"
  type = map(string)
  default = {}
}

variable "cidr_block" {
  description = "IPV4 CIDR for this VPC"
}