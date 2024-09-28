variable "cognito_user_pool_name" {
  type        = string
  description = "The name of the Cognito User Pool."
  default     = null
}

variable "cognito_deletion_protection" {
  type        = bool
  description = "Whether to enable deletion protection on the Cognito User Pool."
  default     = false
}

variable "cognito_tags" {
  type        = map(string)
  description = "A map of tags to assign to the Cognito User Pool."
  default = {
    ManagedBy = "Terraform"
  }
}