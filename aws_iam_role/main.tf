resource "aws_iam_role" "this" {
  count = var.create_aws_iam_role ? 1 : 0

  name                  = var.name
  description           = var.description
  force_detach_policies = var.force_detach_policies
  assume_role_policy    = local.assume_role_policy
  tags                  = merge(var.tags)
}

resource "aws_iam_role_policy_attachment" "this" {
  count      = var.create_aws_iam_role && length(var.policy_arn) > 0 ? length(var.policy_arn) : 0
  role       = aws_iam_role.this[0].name
  policy_arn = element(var.policy_arn, count.index)
}
