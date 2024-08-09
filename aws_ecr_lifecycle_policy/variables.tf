variable "ecr_repository_name_policy" {
  description = "The name of the repository"
  type        = string
  default     = null
}

variable "create_ecr_lifecycle_repository" {
  description = "Whether to create the ECR repository"
  type        = bool
  default     = null
}