resource "aws_iam_role_policy" "this" {
  count = var.create_aws_iam_role_policy ? 1 : 0

  policy = local.policy_json
  role   = var.role
  name   = var.name
}