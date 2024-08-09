output "integration_id" {
  description = "The ID of the API Gateway Integration"
  value       = length(aws_api_gateway_integration.this) > 0 ? aws_api_gateway_integration.this[0].id : ""
}