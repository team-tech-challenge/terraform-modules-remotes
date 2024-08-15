variable "eks_cluster_name" {
  type        = string
  description = "This is the name of the EKS cluster."
  default     = ""
}

variable "eks_cluster_role_arn" {
  type        = string
  description = "This is the ARN of the IAM role for the EKS cluster."
  default     = ""
}

variable "eks_cluster_net_config_service_ipv4_cidr" {
  type        = string
  description = "This is the CIDR block for the EKS cluster network service."
  default     = ""
}

variable "eks_cluster_net_config_ip_family" {
  type        = string
  description = "This is the IP family for the EKS cluster network."
  default     = ""
}

variable "eks_cluster_vpc_config_subnet_ids" {
  type        = list(string)
  description = "This is the list of subnet IDs for the EKS cluster VPC configuration."
  default     = []
}

variable "eks_cluster_vpc_config_security_group_ids" {
  type        = list(string)
  description = "This is the list of security group IDs for the EKS cluster VPC configuration."
  default     = []
}

variable "eks_cluster_endpoint_private_access" {
  type        = bool
  description = "This is the flag to enable or disable private access to the EKS cluster endpoint."
  default     = true
}

variable "eks_cluster_endpoint_public_access" {
  type        = bool
  description = "This is the flag to enable or disable public access to the EKS cluster endpoint."
  default     = false
}

variable "eks_cluster_tags" {
  type        = map(string)
  description = "This is the map of tags for the EKS cluster."
  default = {
    ManagedBy = "Terraform"
  }
}

variable "create_aws_eks_cluster" {
  type        = bool
  description = "This is the flag to create the EKS cluster."
  default     = false
}
