variable "ecr_repository_name" {
  description = "The name of the repository"
  type        = string
  default     = null
}

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE."
  type        = string
  default     = null
}

variable "scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository"
  type        = bool
  default     = null
}

variable "ecr_tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_ecr_repository" {
  description = "Whether to create the ECR repository"
  type        = bool
  default     = null
}
