variable "create_secret" {
  description = "Create a secret in AWS Secrets Manager"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the secret"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "secret_name" {
  description = "The name of the secret"
  type        = string
  default     = null
}

variable "secret_description" {
  description = "The description of the secret"
  type        = string
  default     = null
}