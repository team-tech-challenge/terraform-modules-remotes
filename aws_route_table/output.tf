output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public[0].id
}

output "private_route_table_id" {
  description = "The ID of the private route table"
  value       = aws_route_table.private[0].id
}
