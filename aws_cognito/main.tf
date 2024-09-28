resource "aws_cognito_user_pool" "this" {

  count = var.create_aws_cognito_user_pool ? 1 : 0

  name                        = var.user_pool_name
  auto_verified_attributes    = var.auto_verified_attributes
  email_verification_subject  = var.email_verification_subject
  email_verification_message  = var.email_verification_message
  sms_verification_message    = var.sms_verification_message
  mfa_configuration           = var.mfa_configuration
  deletion_protection         = var.deletion_protection

  password_policy {
    minimum_length    = var.password_minimum_length
    require_uppercase = var.password_require_uppercase
    require_lowercase = var.password_require_lowercase
    require_numbers   = var.password_require_numbers
    require_symbols   = var.password_require_symbols
  }

  tags = var.tags
}
