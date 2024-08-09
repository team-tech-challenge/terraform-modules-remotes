variable "rest_api_id" {
  description = "The ID of the associated REST API"
  type        = string
  default     = null
}

variable "parent_id" {
  description = "The parent ID of the API resource"
  type        = string
  default     = null
}

variable "path_part" {
  description = "The path part of the API resource"
  default     = "{proxy+}"
  type        = string
}

variable "create_api_gateway_resource" {
  description = "Whether to create the api gateway resource"
  type        = bool
  default     = true
}