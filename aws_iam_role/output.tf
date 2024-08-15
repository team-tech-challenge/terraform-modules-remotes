output "iam_role_name" {
  description = "The name of the IAM role."
  value       = var.create_aws_iam_role ? lookup(aws_iam_role.this[0], "name", "") : ""
}

output "iam_role_arn" {
  description = "The ARN of the IAM role."
  value       = var.create_aws_iam_role ? lookup(aws_iam_role.this[0], "arn", "") : ""
}
