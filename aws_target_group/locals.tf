locals {
  target_group = var.create_target_group ? var.target_groups[count.index] : null
}