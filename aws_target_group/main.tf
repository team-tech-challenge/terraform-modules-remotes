resource "aws_lb_target_group" "this" {
  count = var.create_target_group ? length(var.target_groups) : 0

  name_prefix = substr(local.target_group.name_prefix, 0, 6)

  vpc_id = local.target_group.target_type == "instance" ? local.target_group.vpc_id : null

  protocol    = local.target_group.protocol
  port        = local.target_group.port
  target_type = lookup(local.target_group, "target_type", "instance")

  health_check {
    enabled  = local.target_group.health_check_enabled
    path     = local.target_group.health_check_path != null ? local.target_group.health_check_path : null
    port     = local.target_group.health_check_port != null ? local.target_group.health_check_port : null
    protocol = local.target_group.health_check_protocol != null ? local.target_group.health_check_protocol : local.target_group.protocol
  }

  deregistration_delay = lookup(local.target_group, "deregistration_delay", 300)

  tags = var.tags
}