variable "api_gateway_rest_api_id" {
  description = "The ID of the REST API for which the deployment will be associated"
  type        = string
  default     = null
}

variable "api_gateway_description" {
  description = "The description of the deployment"
  type        = string
  default     = null
}

variable "create_api_gateway_deployment" {
  description = "Whether to create the API Gateway deployment"
  type        = bool
  default     = false
}