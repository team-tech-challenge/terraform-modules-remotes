resource "aws_route_table" "public" {
  count  = var.create_route_table ? 1 : 0
  vpc_id = var.vpc_id

  dynamic "route" {
    for_each = var.cidr_block != "" && var.internet_gateway_id != "" ? [1] : []

    content {
      cidr_block = var.cidr_block
      gateway_id = var.internet_gateway_id
    }
  }

  tags = merge(var.tags, {
    "Name" = "${var.name_prefix}-public"
  })
}

resource "aws_route_table" "private" {
  count  = var.create_route_table ? 1 : 0
  vpc_id = var.vpc_id

  dynamic "route" {
    for_each = var.cidr_block != "" && var.nat_gateway_id != "" ? [1] : []

    content {
      cidr_block     = var.cidr_block
      nat_gateway_id = var.nat_gateway_id
    }
  }

  tags = merge(var.tags, {
    "Name" = "${var.name_prefix}-private"
  })
}

resource "aws_route_table_association" "public" {
  count = var.create_route_table ? length(var.public_subnet_ids) : 0

  subnet_id      = element(var.public_subnet_ids, count.index)
  route_table_id = aws_route_table.public[0].id
}

resource "aws_route_table_association" "private" {
  count = var.create_route_table ? length(var.private_subnet_ids) : 0

  subnet_id      = element(var.private_subnet_ids, count.index)
  route_table_id = aws_route_table.private[0].id
}


