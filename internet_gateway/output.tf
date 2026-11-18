# output "vpc_id" {
#   description = "VPC ID"
#   value = aws_vpc.this.id
# }

output "internet_gateway_id" {
  value = aws_internet_gateway.this.id
}