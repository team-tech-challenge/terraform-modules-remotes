output "user_pool_id" {
  description = "The ID of the user pool."
  value       = length(aws_cognito_user_pool.this) > 0 ? aws_cognito_user_pool.this[0].id : ""
}

output "user_pool_arn" {
  description = "The ARN of the user pool."
  value       = length(aws_cognito_user_pool.this) > 0 ? aws_cognito_user_pool.this[0].arn : ""
}

output "user_pool_name" {
  description = "The name of the user pool."
  value       = length(aws_cognito_user_pool.this) > 0 ? aws_cognito_user_pool.this[0].name : ""
}

output "user_pool_endpoint" {
  description = "The endpoint of the user pool."
  value       = length(aws_cognito_user_pool.this) > 0 ? aws_cognito_user_pool.this[0].endpoint : ""
}