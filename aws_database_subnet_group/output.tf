output "aws_database_subnet_group_id" {
  description = "The ID of the RDS subnet group"
  value       = length(aws_db_subnet_group.this) > 0 ? aws_db_subnet_group.this[0].id : null
}

output "aws_database_subnet_group_name" {
  description = "The name of the RDS subnet group"
  value       = length(aws_db_subnet_group.this) > 0 ? aws_db_subnet_group.this[0].name : null
}