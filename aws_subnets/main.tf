resource "aws_subnet" "public" {
  count                   = var.create_subnet ? length(var.public_subnet_cidr) : 0
  vpc_id                  = var.id_vpc
  cidr_block              = var.public_subnet_cidr[count.index]
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true

  tags = merge(var.tags_subnets, {
    "Name" = format("%ssubnet-public-%s", var.prefix_name, element(var.availability_zones, count.index))
  })
}


resource "aws_subnet" "private" {
  count             = var.create_subnet ? length(var.private_subnet_cidr) : 0
  vpc_id            = var.id_vpc
  cidr_block        = var.private_subnet_cidr[count.index]
  availability_zone = element(var.availability_zones, count.index)

  tags = merge(var.tags_subnets, {
    "Name" = format("%ssubnet-private-%s", var.prefix_name, element(var.availability_zones, count.index))
  })
}
