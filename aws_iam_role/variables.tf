variable "name" {
  description = "The name of the IAM Role."
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the IAM role."
  type        = string
  default     = null
}

variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role in JSON format."
  type        = string
  default     = null
}

variable "force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  type        = bool
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the IAM role."
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_aws_iam_role" {
  description = "Determines whether the IAM role should be created."
  type        = bool
  default     = false
}

variable "service_identifiers" {
  description = "A list of service principals that can assume the role (e.g., 'eks.amazonaws.com', 'lambda.amazonaws.com')."
  type        = list(string)
  default     = []
  validation {
    condition     = length(var.service_identifiers) > 0
    error_message = "At least one service identifier must be provided."
  }
}

variable "policy_arn" {
  description = "A list of policy ARNs to attach to the IAM role."
  type        = list(string)
  default     = []
}
