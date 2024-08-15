output "zone_id" {
  description = "The ID of the Route 53 zone."
  value       = length(aws_route53_zone.this) > 0 ? aws_route53_zone.this[0].zone_id : null
}

output "name_servers" {
  description = "A list of name servers for the hosted zone."
  value       = length(aws_route53_zone.this) > 0 ? aws_route53_zone.this[0].name_servers : []
}
