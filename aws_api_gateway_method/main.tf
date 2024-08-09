resource "aws_api_gateway_method" "this" {

  count = var.create_api_gateway_method ? 1 : 0

  rest_api_id   = var.rest_api_id
  resource_id   = var.resource_id
  http_method   = var.http_method
  authorization = var.authorization
}