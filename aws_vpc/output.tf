output "vpc_id" {
  description = "The ID of the VPC"
  value       = length(aws_vpc.this) > 0 ? aws_vpc.this[0].id : null
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = length(aws_vpc.this) > 0 ? aws_vpc.this[0].cidr_block : null
}
