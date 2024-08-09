resource "aws_secretsmanager_secret_version" "this" {

  count = var.create_secret_version ? 1 : 0

  secret_id     = var.secret_id
  secret_string = var.secret_string
}