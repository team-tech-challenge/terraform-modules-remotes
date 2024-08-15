resource "aws_route53_record" "this" {

  count = var.create_record_route53 ? 1 : 0

  name    = var.name
  type    = var.type
  zone_id = var.zone_id
  records = var.records
  ttl     = var.ttl
}
