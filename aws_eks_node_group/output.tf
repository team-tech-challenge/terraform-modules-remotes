output "node_group_name" {
  description = "The name of the EKS node group"
  value       = length(aws_eks_node_group.this[*].node_group_name) > 0 ? aws_eks_node_group.this[*].node_group_name : null
}

output "node_group_arn" {
  description = "The ARN of the EKS node group"
  value       = length(aws_eks_node_group.this[*].arn) > 0 ? aws_eks_node_group.this[*].arn : null
}
