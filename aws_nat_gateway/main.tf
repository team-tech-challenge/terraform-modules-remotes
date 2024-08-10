resource "aws_nat_gateway" "nat_gateway" {
  count = var.create_nat_gateway ? 1 : 0

  allocation_id = aws_eip.nat_eip[count.index].id
  subnet_id     = var.public_subnet_id

  tags = merge({
    "Name" = "${var.name_prefix}-nat-gateway"
  }, var.tags)
}

resource "aws_eip" "nat_eip" {
  count = var.create_nat_gateway ? 1 : 0

  tags = merge({
    "Name" = "${var.name_prefix}-nat-eip"
  }, var.tags)
}
