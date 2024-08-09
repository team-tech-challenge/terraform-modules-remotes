resource "aws_db_subnet_group" "this" {

  count = var.create_db_subnet_group ? 1 : 0

  name_prefix = "${var.name}-subnet-group"
  subnet_ids  = var.subnet_ids

  tags = var.tags
}