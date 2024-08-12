variable "zone_name" {
  type        = string
  description = "The name of the hosted zone."
  default     = null
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID to associate with a private hosted zone. Required if private_zone is true."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_route53_zone" {
  type        = bool
  description = "Set to true to create the Route 53 zone."
  default     = true
}
