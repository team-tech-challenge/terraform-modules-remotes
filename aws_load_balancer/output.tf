output "load_balancer_arns" {
  description = "Lista de ARNs dos Load Balancers"
  value       = [for lb in aws_lb.this : lb.arn]
}

output "load_balancer_dns_names" {
  description = "Lista de nomes DNS dos Load Balancers"
  value       = [for lb in aws_lb.this : lb.dns_name]
}

output "load_balancer_ids" {
  description = "Lista de IDs dos Load Balancers"
  value       = [for lb in aws_lb.this : lb.id]
}
