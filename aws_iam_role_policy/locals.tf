locals {
  policy_json = jsonencode({
    Version   = "2012-10-17",
    Statement = var.policy_statements
  })
}