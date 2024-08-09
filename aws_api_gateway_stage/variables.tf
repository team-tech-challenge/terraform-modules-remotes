variable "api_deployment_id" {
  description = "The deployment ID of the API Gateway deployment"
  type        = string
  default     = null
}

variable "api_rest_api_id" {
  description = "The ID of the REST API"
  type        = string
  default     = null
}

variable "api_stage_name" {
  description = "The name of the stage"
  type        = string
  default     = null
}

variable "api_stage_description" {
  description = "The description of the stage"
  type        = string
  default     = null
}

variable "xray_tracing_enabled" {
  description = "Whether active tracing with X-Ray is enabled"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default = {
    "ManagedBy" = "Terraform"
  }
}

variable "create_api_gateway_stage" {
  description = "Whether to create an API Gateway stage"
  type        = bool
  default     = false
}