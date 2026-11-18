output "key_name" {
  description = "Registered key Pair name"
  value = aws_key_pair.this.key_name
}