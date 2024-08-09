output "deployment_id" {
  value = length(aws_api_gateway_deployment.this) > 0 ? aws_api_gateway_deployment.this[0].id : ""
}