variable "target_groups" {
  description = "List of target group configurations"
  type = list(object({
    name_prefix           = string
    vpc_id                = optional(string)
    protocol              = string
    port                  = number
    health_check_enabled  = bool
    health_check_path     = optional(string)
    health_check_port     = optional(string)
    health_check_protocol = optional(string)
    target_type           = optional(string)
    deregistration_delay  = optional(number)
  }))
  default = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_target_group" {
  description = "Create AWS LB Target Group"
  type        = bool
  default     = false
}
