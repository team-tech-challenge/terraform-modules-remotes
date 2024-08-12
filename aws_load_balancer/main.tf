resource "aws_lb" "this" {

  count = var.create_aws_load_balancer ? 1 : 0

  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = var.security_groups
  subnets            = var.subnets

  enable_deletion_protection = var.enable_deletion_protection

  idle_timeout = var.idle_timeout

  tags = merge(var.tags, {
    Name = var.name
  })
}