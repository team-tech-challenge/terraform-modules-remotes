variable "create_aws_lb_listener" {
  description = "Boolean to determine whether to create the AWS LB listeners"
  type        = bool
  default     = true
}

variable "listeners" {
  description = "List of listener configurations"
  type = list(object({
    load_balancer_arn = string
    port              = number
    protocol          = string
    ssl_policy        = optional(string)
    certificate_arn   = optional(string)
    default_actions = list(object({
      type = string
      forward = optional(object({
        target_group_arn = string
      }))
      redirect = optional(object({
        port        = string
        protocol    = string
        status_code = string
      }))
    }))
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