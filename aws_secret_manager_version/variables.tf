variable "create_secret_version" {
  description = "Create a new version of the secret"
  type        = bool
  default     = true
}

variable "secret_id" {
  description = "The secret ID"
  type        = string
  default     = null
}

variable "secret_string" {
  description = "The secret string"
  type        = string
  default     = null
}
