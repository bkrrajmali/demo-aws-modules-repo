output "route_table_id" {
  description = "Custom Route Tabel ID"
  value = aws_route_table.this.id
}

output "route_table_association_id" {
  value = aws_route_table_association.this.id
}