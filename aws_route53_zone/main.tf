resource "aws_route53_zone" "this" {
  count = var.create_route53_zone ? 1 : 0
  name  = var.zone_name

  dynamic "vpc" {
    for_each = var.vpc_id != null ? [1] : []
    content {
      vpc_id = var.vpc_id
    }
  }

  tags = var.tags
}
