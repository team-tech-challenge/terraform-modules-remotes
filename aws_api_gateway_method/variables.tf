variable "rest_api_id" {
  description = "The ID of the associated REST API"
  type        = string
  default     = null
}

variable "http_method" {
  description = "The HTTP method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY) for the resource"
  default     = "ANY"
  type        = string
}

variable "authorization" {
  description = "The type of authorization used for the method (NONE, AWS_IAM, CUSTOM, COGNITO_USER_POOLS)"
  default     = "NONE"
  type        = string
}

variable "resource_id" {
  description = "The ID of the API Gateway resource"
  type        = string
  default     = null
}

variable "create_api_gateway_method" {
  description = "Whether to create the api gateway method"
  type        = bool
  default     = true
}