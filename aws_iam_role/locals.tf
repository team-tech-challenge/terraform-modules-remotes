locals {
  assume_role_policy = var.assume_role_policy != null ? var.assume_role_policy : data.aws_iam_policy_document.assume_role_policy.json
}
