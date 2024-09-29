resource "aws_cognito_user_pool_client" "this" {

  count = var.create_user_pool_client ? 1 : 0

  name                   = var.user_pool_client_name
  user_pool_id           = var.user_pool_id
  generate_secret        = var.generate_secret
  access_token_validity  = var.access_token_validity
  id_token_validity      = var.id_token_validity
  refresh_token_validity = var.refresh_token_validity

  explicit_auth_flows = [
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH",
    "ALLOW_CUSTOM_AUTH",
    "ALLOW_USER_SRP_AUTH"
  ]
}