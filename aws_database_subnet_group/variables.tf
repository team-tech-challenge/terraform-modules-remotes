variable "name" {
  description = "The name of the subnet group"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_db_subnet_group" {
  description = "Whether to create a database subnet group"
  type        = bool
  default     = false
}