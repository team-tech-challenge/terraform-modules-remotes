output "eks_addon_cluster_names" {
  description = "The name of the EKS clusters"
  value       = { for keys, value in aws_eks_addon.this : keys => value.cluster_name }
}

output "eks_addon_names" {
  description = "The names of the EKS addons"
  value       = { for keys, value in aws_eks_addon.this : keys => value.addon_name }
}

output "eks_addon_versions" {
  description = "The versions of the EKS addons"
  value       = { for keys, value in aws_eks_addon.this : keys => value.addon_version }
}

output "eks_addon_resolve_conflicts_on_create" {
  description = "The resolve conflicts on create values for the EKS addons"
  value       = { for keys, value in aws_eks_addon.this : keys => value.resolve_conflicts_on_create }
}

output "eks_addon_resolve_conflicts_on_update" {
  description = "The resolve conflicts on update values for the EKS addons"
  value       = { for keys, value in aws_eks_addon.this : keys => value.resolve_conflicts_on_update }
}
