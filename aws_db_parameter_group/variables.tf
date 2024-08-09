variable "name" {
  description = "The name of the parameter group"
  type        = string
  default     = null
}

variable "engine" {
  description = "The name of the database engine"
  type        = string
  default     = null
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_db_parameter_group" {
  description = "Whether to create a database parameter group"
  type        = bool
  default     = false
}