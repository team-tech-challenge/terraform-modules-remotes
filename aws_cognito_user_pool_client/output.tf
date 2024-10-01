output "user_pool_client_id" {
  value = length(aws_cognito_user_pool_client.this) > 0 ? aws_cognito_user_pool_client.this[0].id : ""
}

output "user_pool_client_secret" {
  value = length(aws_cognito_user_pool_client.this) > 0 ? aws_cognito_user_pool_client.this[0].client_secret : ""
}
