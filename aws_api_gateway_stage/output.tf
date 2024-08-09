output "stage_name" {
  value = length(aws_api_gateway_stage.this) > 0 ? aws_api_gateway_stage.this[0].stage_name : ""
}