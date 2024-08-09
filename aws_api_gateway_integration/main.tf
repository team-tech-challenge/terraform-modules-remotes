resource "aws_api_gateway_integration" "this" {

  count = var.create_api_gateway_integration ? 1 : 0

  rest_api_id = var.rest_api_id
  resource_id = var.resource_id
  http_method = var.http_method

  integration_http_method = var.integration_http_method
  type                    = var.type
  uri                     = var.uri
}
