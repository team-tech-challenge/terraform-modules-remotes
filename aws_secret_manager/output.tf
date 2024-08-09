output "secret_manager_id" {
  description = "The ID of the secret manager."
  value       = length(aws_secretsmanager_secret.this) > 0 ? aws_secretsmanager_secret.this[0].id : null
}