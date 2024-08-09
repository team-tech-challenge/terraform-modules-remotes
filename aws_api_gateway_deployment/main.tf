resource "aws_api_gateway_deployment" "this" {

  count = var.create_api_gateway_deployment ? 1 : 0

  rest_api_id = var.api_gateway_rest_api_id
  description = var.api_gateway_description
}
