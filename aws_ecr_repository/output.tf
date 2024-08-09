output "ecr_repository_url" {
  description = "The URL of the repository"
  value       = length(aws_ecr_repository.this) > 0 ? aws_ecr_repository.this[0].repository_url : ""
}

output "ecr_repository_arn" {
  description = "The ARN of the repository"
  value       = length(aws_ecr_repository.this) > 0 ? aws_ecr_repository.this[0].arn : ""
}

output "ecr_repository_registry_id" {
  description = "The registry ID where the repository was created"
  value       = length(aws_ecr_repository.this) > 0 ? aws_ecr_repository.this[0].registry_id : ""
}

output "ecr_repository_name" {
  description = "The name of the repository"
  value       = length(aws_ecr_repository.this) > 0 ? aws_ecr_repository.this[0].name : ""
}