output "method_id" {
  description = "The ID of the API Gateway Method"
  value       = length(aws_api_gateway_method.this) > 0 ? aws_api_gateway_method.this[0].id : ""
}

output "http_method" {
  description = "The HTTP method configured for the API Gateway resource. This specifies the type of request (GET, POST, PUT, DELETE, etc.) that the API Gateway will accept and process for the specified resource. If the API Gateway method is created, this output will return the HTTP method; otherwise, it will return an empty string."
  value       = length(aws_api_gateway_method.this) > 0 ? aws_api_gateway_method.this[0].http_method : ""
}
