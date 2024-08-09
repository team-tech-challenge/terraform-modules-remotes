resource "aws_db_parameter_group" "this" {

  count = var.create_db_parameter_group ? 1 : 0

  name_prefix = var.name
  family      = "${var.engine}${var.engine == "postgres" ? substr(var.engine_version, 0, 2) : substr(var.engine_version, 0, 3)}"

  parameter {
    name         = "max_connections"
    value        = "500"
    apply_method = "pending-reboot"
  }

  dynamic "parameter" {
    for_each = tonumber(substr(var.engine_version, 0, 2)) >= 15 ? [false] : []
    content {
      name         = "rds.force_ssl"
      value        = 0
      apply_method = "immediate"
    }
  }

  tags = var.tags

  lifecycle {
    create_before_destroy = true
  }
}