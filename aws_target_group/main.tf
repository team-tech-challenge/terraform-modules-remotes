resource "aws_lb_target_group" "this" {
  count = var.create_target_group ? length(var.target_groups) : 0

  name_prefix = substr(var.target_groups[count.index].name_prefix, 0, 6)
  
  vpc_id = lookup(var.target_groups[count.index], "target_type", "instance") == "instance" ? var.target_groups[count.index].vpc_id : null
  
  protocol    = var.target_groups[count.index].protocol
  port        = var.target_groups[count.index].port
  target_type = lookup(var.target_groups[count.index], "target_type", "instance")

  health_check {
    enabled  = var.target_groups[count.index].health_check_enabled
    path     = lookup(var.target_groups[count.index], "health_check_path", null)
    port     = lookup(var.target_groups[count.index], "health_check_port", null)
    protocol = lookup(var.target_groups[count.index].health_check_protocol, var.target_groups[count.index].protocol)
  }

  deregistration_delay = lookup(var.target_groups[count.index], "deregistration_delay", 300)

  tags = var.tags
}
