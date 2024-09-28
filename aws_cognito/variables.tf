variable "user_pool_name" {
  type        = string
  description = "The name of the Cognito User Pool."
  default     = null
}

variable "auto_verified_attributes" {
  type        = list(string)
  description = "The list of attributes that are auto-verified."
  default     = ["email"]
}

variable "email_verification_subject" {
  type        = string
  description = "The subject of the email verification message."
  default     = "Your verification code"
}

variable "email_verification_message" {
  type        = string
  description = "The message template for the email verification message."
  default     = "Your verification code is {####}"
}

variable "sms_verification_message" {
  type        = string
  description = "The message template for the SMS verification message."
  default     = "Your verification code is {####}"
}

variable "mfa_configuration" {
  type        = string
  description = "The MFA configuration for the Cognito User Pool."
  default     = "OFF"
}

variable "password_minimum_length" {
  type        = number
  description = "The minimum length of the password."
  default     = 8
}

variable "password_require_uppercase" {
  type        = bool
  description = "Whether the password must contain an uppercase letter."
  default     = true
}

variable "password_require_lowercase" {
  type        = bool
  description = "Whether the password must contain a lowercase letter."
  default     = true
}

variable "password_require_numbers" {
  type        = bool
  description = "Whether the password must contain a number."
  default     = true
}

variable "password_require_symbols" {
  type        = bool
  description = "Whether the password must contain a symbol."
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the Cognito User Pool."
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_aws_cognito_user_pool" {
  type        = bool
  description = "Whether to create the Cognito User Pool."
  default     = false
}

variable "deletion_protection" {
  type        = bool
  description = "Whether to enable deletion protection for the Cognito User Pool."
  default     = false
}