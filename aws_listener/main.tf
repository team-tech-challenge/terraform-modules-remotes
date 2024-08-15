resource "aws_lb_listener" "this" {
  count = var.create_aws_lb_listener ? length(var.listeners) : 0

  load_balancer_arn = var.listeners[count.index].load_balancer_arn
  port              = var.listeners[count.index].port
  protocol          = var.listeners[count.index].protocol

  dynamic "default_action" {
    for_each = var.listeners[count.index].default_actions
    content {
      type = default_action.value.type

      dynamic "redirect" {
        for_each = default_action.value.redirect != null ? [default_action.value.redirect] : []
        content {
          port        = default_action.value.redirect.port
          protocol    = default_action.value.redirect.protocol
          status_code = default_action.value.redirect.status_code
        }
      }

      dynamic "forward" {
        for_each = default_action.value.forward != null ? [default_action.value.forward] : []
        content {
          target_group {
            arn = default_action.value.forward.target_group_arn
          }
        }
      }
    }
  }

  ssl_policy      = lookup(var.listeners[count.index], "ssl_policy", null)
  certificate_arn = lookup(var.listeners[count.index], "certificate_arn", null)
  tags            = var.tags
}
