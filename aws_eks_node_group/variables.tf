variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = ""
}

variable "node_role_arn" {
  description = "The ARN of the IAM role that provides permissions for the EKS node group"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "The IDs of the subnets where the EKS node group will be deployed"
  type        = list(string)
  default     = []
}

variable "desired_size" {
  description = "The desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "The minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "The EC2 instance types for the EKS nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "ami_type" {
  description = "The AMI type for the EKS nodes (e.g., AL2_x86_64, AL2_x86_64_GPU)"
  type        = string
  default     = "AL2_x86_64"
}

variable "disk_size" {
  description = "The size of the disk attached to each worker node, in GB"
  type        = number
  default     = 20
}

variable "capacity_type" {
  description = "The capacity type of the node group (e.g., ON_DEMAND, SPOT)"
  type        = string
  default     = "ON_DEMAND"
}

variable "tags" {
  description = "A map of tags to apply to the node group"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "release_version" {
  description = "The AMI version for the EKS node group"
  type        = string
  default     = ""
}

variable "force_update_version" {
  description = "Whether to force the update of the EKS node group version"
  type        = bool
  default     = false
}

variable "create_node_group" {
  description = "Whether to create the EKS node group"
  type        = bool
  default     = true
}