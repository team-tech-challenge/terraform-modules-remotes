resource "aws_api_gateway_stage" "this" {

  count = var.create_api_gateway_stage ? 1 : 0

  deployment_id        = var.api_deployment_id
  rest_api_id          = var.api_rest_api_id
  stage_name           = var.api_stage_name
  description          = var.api_stage_description
  xray_tracing_enabled = var.xray_tracing_enabled
  tags                 = merge(var.tags)
}