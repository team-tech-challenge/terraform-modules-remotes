output "target_group_arn" {
  description = "ARN do Target Group"
  value       = [for tg in aws_lb_target_group.this : tg.arn]
}
