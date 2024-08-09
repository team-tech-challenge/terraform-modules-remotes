output "rest_api_id" {
  description = "The ID of the REST API"
  value       = length(aws_api_gateway_rest_api.this) > 0 ? aws_api_gateway_rest_api.this[0].id : ""
}

output "rest_parent_id" {
  description = "The ID of the parent resource in the API Gateway. This ID is used to establish the hierarchical structure of the API resources. If the API Gateway resource is created, this output will return the parent ID of the resource, otherwise, it will return an empty string."
  value       = length(aws_api_gateway_rest_api.this) > 0 ? aws_api_gateway_rest_api.this[0].root_resource_id : ""
}


output "execution_arn" {
  description = "The execution ARN of the API Gateway, which is used to invoke the API. This ARN is crucial for integrating the API with other services or invoking it programmatically. If the API Gateway REST API is created, this output will return the execution ARN; otherwise, it will return an empty string."
  value       = length(aws_api_gateway_rest_api.this) > 0 ? aws_api_gateway_rest_api.this[0].execution_arn : ""
}
