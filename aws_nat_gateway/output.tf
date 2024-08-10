output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = length(aws_nat_gateway.nat_gateway) > 0 ? aws_nat_gateway.nat_gateway[0].id : null
}
