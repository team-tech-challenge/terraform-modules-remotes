output "name" {
  description = "The name of the parameter group."
  value       = length(aws_db_parameter_group.this) > 0 ? aws_db_parameter_group.this[0].name : null
}