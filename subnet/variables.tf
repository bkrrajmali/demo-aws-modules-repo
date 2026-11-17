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

variable "cidr_block" {
  description = "Subnet CIDR Within VPC"
  type = string
}

variable "availability_zone" {
  description = "Availabilty Zone in the Provider region"
  type = string
}

variable "map_public_ip_on_launch" {
  description = "Assign PUBLIC IPV4 address on launch"
  type = bool
  default = true
}