variable "user_pool_client_name" {
  description = "The name of the user pool client."
  type        = string
  default     = null
}

variable "user_pool_id" {
  description = "The ID of the user pool."
  type        = string
  default     = null
}

variable "generate_secret" {
  description = "Whether to generate a client secret."
  type        = bool
  default     = false
}

variable "access_token_validity" {
  description = "The time limit in days that the access token is valid for."
  type        = number
  default     = 1
}

variable "id_token_validity" {
  description = "The time limit in days that the ID token is valid for."
  type        = number
  default     = 1
}

variable "refresh_token_validity" {
  description = "The time limit in days that the refresh token is valid for."
  type        = number
  default     = 30
}

variable "prevent_user_existence_errors" {
  description = "Whether to prevent user existence errors."
  type        = bool
  default     = false
}

variable "create_user_pool_client" {
  description = "Whether to create the user pool client."
  type        = bool
  default     = true
}