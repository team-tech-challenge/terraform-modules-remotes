resource "aws_lambda_event_source_mapping" "this" {

  for_each = var.create_aws_lambda_event_source_mapping ? { for idx, arn in var.event_source_arns : idx => arn } : {}

  event_source_arn = each.value
  function_name    = var.function_name
  batch_size       = var.batch_size
}
