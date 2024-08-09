variable "create_aws_lambda_event_source_mapping" {
  description = "A boolean flag to control whether the Lambda event source mapping should be created"
  type        = bool
  default     = true
}

variable "event_source_arns" {
  description = "The ARN of the event source. This is the ARN of the Kinesis or DynamoDB stream, SQS queue, or other event source."
  type        = list(string)
  default     = null
}

variable "function_name" {
  description = "The name of the Lambda function to invoke when events are published to the event source."
  type        = string
  default     = null
}

variable "batch_size" {
  description = "The largest number of records that Lambda will retrieve from your event source at the time of invocation."
  type        = number
  default     = null
}
