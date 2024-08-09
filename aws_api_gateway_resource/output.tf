output "resource_id" {
  description = "The ID of the API Gateway Resource"
  value       = length(aws_api_gateway_resource.this) > 0 ? aws_api_gateway_resource.this[0].id : ""
}

