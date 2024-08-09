variable "name" {
  description = "The name of the DynamoDB table."
  type        = string
  default     = null
}

variable "read_capacity" {
  description = "The read capacity units for the DynamoDB table."
  type        = number
  default     = 2
}

variable "write_capacity" {
  description = "The write capacity units for the DynamoDB table."
  type        = number
  default     = 2
}

variable "hash_key" {
  description = "The hash key to be used for the DynamoDB table."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the DynamoDB table."
  type        = map(string)
  default = {
    ManagedBy = "True"
  }
}

variable "attribute_name" {
  description = "The name of the attribute to be used for the DynamoDB table."
  type        = string
  default     = null
}

variable "attribute_type" {
  description = "The type of the attribute to be used for the DynamoDB table. Must be one of 'S', 'N', or 'B'."
  type        = string
  default     = null
}

variable "billing_mode" {
  description = "Defines the billing mode of the AWS DynamoDB table. The options are 'PROVISIONED' for provisioned throughput and 'PAY_PER_REQUEST' for on-demand capacity."
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "create_aws_aws_dynamodb_table" {
  description = "Determines whether the Dynamodb table should be created."
  type        = bool
  default     = true
}
