variable "action" {
  type        = string
  description = "The action that the principal can use on the function. Typically, this is 'lambda:InvokeFunction'."
  default     = null

}

variable "function_name" {
  type        = string
  description = "The name of the Lambda function for which you are granting permission to invoke."
  default     = null
}

variable "principal" {
  type        = string
  description = "The entity for which you are granting the Lambda function invocation permission. This is typically a service principal like 'events.amazonaws.com' for CloudWatch Events."
  default     = null
}

variable "source_arn" {
  type        = string
  description = "The ARN of the resource that is invoking the Lambda function. This is used to specify the source resource for the permission."
  default     = null
}

variable "statement_id" {
  type        = string
  description = "A unique identifier for the statement. Typically, a statement ID helps you to identify which statement in a policy you are referring to. Each statement ID must be unique within the policy."
  default     = null
}

variable "create_lambda_permission" {
  description = "Whether to create the lambda function permission"
  type        = bool
  default     = true
}
