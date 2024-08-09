resource "aws_secretsmanager_secret" "this" {
  count = var.create_secret ? 1 : 0

  name        = var.secret_name
  description = var.secret_description

  tags = merge(
    var.tags,
    {
      Name = var.secret_name
    },
  )
}

