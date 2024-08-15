output "eks_cluster_id" {
  description = "The EKS Cluster ID"
  value       = length(aws_eks_cluster.this.*.id) > 0 ? aws_eks_cluster.this[0].id : null
}

output "eks_cluster_name" {
  description = "The EKS Cluster Name"
  value       = length(aws_eks_cluster.this.*.name) > 0 ? aws_eks_cluster.this[0].name : null
}

output "eks_cluster_version" {
  description = "The EKS Cluster Version"
  value       = length(aws_eks_cluster.this.*.version) > 0 ? aws_eks_cluster.this[0].version : null
}

output "eks_cluster_status" {
  description = "The EKS Cluster Status"
  value       = length(aws_eks_cluster.this.*.status) > 0 ? aws_eks_cluster.this[0].status : null
}
