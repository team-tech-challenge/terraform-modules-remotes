resource "aws_lb_target_group" "this" {
  for_each = var.create_target_group && length(var.target_groups) > 0 ? {
    for idx, target_group in var.target_groups :
    idx => target_group
  } : {}

  name_prefix = substr(each.value.name_prefix, 0, 6)

  vpc_id = lookup(each.value, "target_type", "instance") == "instance" ? each.value.vpc_id : null

  protocol    = each.value.protocol
  port        = each.value.port
  target_type = lookup(each.value, "target_type", "instance")

  health_check {
    enabled  = each.value.health_check_enabled
    path     = each.value.health_check_path != null ? each.value.health_check_path : null
    port     = each.value.health_check_port != null ? each.value.health_check_port : null
    protocol = each.value.health_check_protocol != null ? each.value.health_check_protocol : each.value.protocol
  }

  deregistration_delay = lookup(each.value, "deregistration_delay", 300)

  tags = var.tags
}
