resource "aws_cognito_user_pool" "this" {
  name                = var.cognito_user_pool_name
  deletion_protection = var.cognito_deletion_protection
  tags                = var.cognito_tags
}