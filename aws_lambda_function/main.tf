resource "aws_lambda_function" "this" {

  count = var.create_lambda_function ? 1 : 0

  function_name    = var.function_name
  role             = var.role
  memory_size      = var.memory_size
  timeout          = var.timeout
  handler          = var.handler
  description      = var.description
  image_uri        = var.image_uri
  tags             = merge(var.tags)
  layers           = var.layers
  package_type     = var.package_type
  runtime          = var.runtime
  publish          = var.publish
  filename         = var.filename
  source_code_hash = var.source_code_hash

  environment {
    variables = var.environment
  }

  ephemeral_storage {
    size = var.ephemeral_storage
  }

  vpc_config {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }

  tracing_config {
    mode = var.tracing_config
  }
}
