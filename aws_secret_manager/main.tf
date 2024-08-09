resource "aws_secretsmanager_secret" "this" {
  count = var.create_secret ? 1 : 0

  name  = var.secret_name

  tags = merge(
    var.tags,
    {
      Name = var.secret_name
    },
  )
}

