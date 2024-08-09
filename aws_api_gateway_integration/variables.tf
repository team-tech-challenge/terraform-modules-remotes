variable "rest_api_id" {
  description = "The ID of the associated REST API"
  type        = string
  default     = null
}

variable "resource_id" {
  description = "The ID of the API Gateway resource"
  type        = string
  default     = null
}

variable "http_method" {
  description = "The HTTP method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY) for the resource"
  type        = string
  default     = null
}

variable "integration_http_method" {
  description = "The HTTP method for the integration (POST for Lambda functions)"
  default     = "POST"
  type        = string
}

variable "type" {
  description = "The type of integration (AWS, AWS_PROXY, HTTP, HTTP_PROXY, MOCK)"
  default     = "AWS_PROXY"
  type        = string
}

variable "region" {
  description = "The AWS region where the API Gateway and Lambda function are deployed"
  type        = string
  default     = "us-east-1"
}

variable "lambda_function_arn" {
  description = "The ARN of the Lambda function to be invoked"
  type        = string
  default     = null
}

variable "create_api_gateway_integration" {
  description = "Whether to create the api gateway integration"
  type        = bool
  default     = true
}

variable "uri" {
  description = "The URI of the backend endpoint that the API Gateway integration connects to. For a Lambda function, this is the ARN of the Lambda function."
  type        = string
  default     = null
}
