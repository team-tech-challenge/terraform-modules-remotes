variable "create_route_table" {
  description = "Flag to create route tables"
  type        = bool
  default     = true
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = null
}

variable "cidr_block" {
  description = "The CIDR block for the route"
  type        = string
  default     = ""
}


variable "internet_gateway_id" {
  description = "The ID of the internet gateway for the public route table"
  type        = string
  default     = null
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
  default     = []
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "name_prefix" {
  description = "Prefix for route table names"
  type        = string
  default     = null
}

variable "nat_gateway_id" {
  description = "The ID of the NAT gateway for the private route table"
  type        = string
  default     = null
}

variable "destination_cidr_block" {
  description = "The destination CIDR block for the private route table"
  type        = string
  default     = ""
}