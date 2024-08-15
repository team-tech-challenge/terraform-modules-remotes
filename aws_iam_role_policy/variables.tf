variable "name" {
  description = "The name of the IAM Role."
  type        = string
  default     = null
}


variable "role" {
  description = "The role to be associated or specified for the given context, usually representing an AWS IAM role."
  type        = string
  default     = null
}

variable "policy" {
  description = "The policy in JSON format that defines various permissions for AWS services."
  type        = string
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the IAM role policy."
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_aws_iam_role_policy" {
  description = "Determines whether the IAM role should be created."
  type        = bool
  default     = true
}

variable "policy_statements" {
  description = "List of policy statements."
  type = list(object({
    Effect   = string
    Action   = list(string)
    Resource = list(string)
  }))
  default = []
  validation {
    condition     = length(var.policy_statements) > 0
    error_message = "At least one policy statement must be provided."
  }
}
