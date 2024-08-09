output "rds_name" {
  description = "The name of the RDS instance"
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].identifier : null
}

output "rds_engine" {
  description = "The database engine for the RDS instance"
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].engine : null
}

output "rds_engine_version" {
  description = "The database engine version for the RDS instance"
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].engine_version : null
}

output "rds_db_name" {
  description = "The name of the database for the RDS instance"
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].db_name : null
}

output "rds_instance_address" {
  description = "The address of the RDS instance"
  sensitive   = true
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].address : null
}

output "rds_instance_user" {
  description = "The username for the RDS instance"
  sensitive   = true
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].username : null
}

output "rds_instance_password" {
  description = "The password for the RDS instance"
  sensitive   = true
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].password : null
}

output "rds_instance_port" {
  description = "The port for the RDS instance"
  sensitive   = true
  value       = length(aws_db_instance.this) > 0 ? aws_db_instance.this[0].port : null
}

output "db_password" {
  description = "The password for the RDS instance"
  sensitive   = true
  value       = length(random_password.this) > 0 ? random_password.this[0].result : null
}
