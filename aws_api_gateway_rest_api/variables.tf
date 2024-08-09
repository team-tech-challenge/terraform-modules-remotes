variable "api_name" {
  description = "The name of the API Gateway API"
  type        = string
  default     = null
}

variable "api_description" {
  description = "The description of the API Gateway API"
  type        = string
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Defines tags to manage and control resources within the AWS environment."
  default = {
    Terraform_Deploy = "True"
  }
}

variable "create_api_gateway_rest_api" {
  description = "Whether to create the api gateway rest api"
  type        = bool
  default     = true
}