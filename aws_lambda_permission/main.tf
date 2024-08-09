resource "aws_lambda_permission" "this" {

  count = var.create_lambda_permission ? 1 : 0

  statement_id  = var.statement_id
  action        = var.action
  function_name = var.function_name
  principal     = var.principal
  source_arn    = var.source_arn

}