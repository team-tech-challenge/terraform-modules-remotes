variable "create_aws_eks_addon" {
  description = "Flag to determine if the EKS addons should be created"
  type        = bool
  default     = true
}

variable "eks_addons" {
  description = "A map of EKS addons to create"
  type = map(object({
    cluster_name                = string
    addon_name                  = string
    addon_version               = string
    configuration_values        = string
    resolve_conflicts_on_create = string
    resolve_conflicts_on_update = string
  }))
  default = {}
}
