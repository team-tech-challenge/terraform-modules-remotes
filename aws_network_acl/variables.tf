variable "create_network_acl" {
  type        = string
  description = "Create Network ACL"
  default     = false
}

variable "aws_net_acl_vpc_id" {
  type        = string
  description = "Network ACL VPC ID"
  default     = ""
}

variable "aws_net_acl_tags" {
  type        = map(string)
  description = "Network ACL Tags"
  default = {
    ManagedBy = "Terraform"
  }
}

variable "aws_net_acl_subnet_ids" {
  type        = list(string)
  description = "Network ACL Subnet IDs"
  default     = []
}


variable "aws_net_acl_ingress_rules" {
  description = "List of ingress rules for the network ACL"
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
    icmp_type  = optional(number)
    icmp_code  = optional(number)
  }))
  default = []
}

variable "aws_net_acl_egress_rules" {
  description = "List of egress rules for the network ACL"
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
    icmp_type  = optional(number)
    icmp_code  = optional(number)
  }))
  default = []
}
