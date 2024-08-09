resource "aws_api_gateway_resource" "this" {

  count = var.create_api_gateway_resource ? 1 : 0

  rest_api_id = var.rest_api_id
  parent_id   = var.parent_id
  path_part   = var.path_part
}