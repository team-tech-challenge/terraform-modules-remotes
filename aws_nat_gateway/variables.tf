variable "create_nat_gateway" {
  description = "Whether to create NAT Gateway or not"
  type        = bool
  default     = true
}

variable "name_prefix" {
  description = "Prefix for naming resources"
  type        = string
  default     = ""
}

variable "public_subnet_id" {
  description = "ID of the public subnet where NAT Gateway will be created"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}
