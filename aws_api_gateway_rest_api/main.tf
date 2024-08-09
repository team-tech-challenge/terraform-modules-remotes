resource "aws_api_gateway_rest_api" "this" {

  count = var.create_api_gateway_rest_api ? 1 : 0

  name        = var.api_name
  description = var.api_description
  tags        = merge(var.tags)
}
