resource "aws_vpc" "this" {

  count = var.create_vpc ? 1 : 0

  cidr_block                           = var.vpc_cidr_block
  enable_dns_support                   = var.enable_dns_support
  enable_dns_hostnames                 = var.enable_dns_hostnames
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
  instance_tenancy                     = var.instance_tenancy
  tags                                 = merge(var.tags)
}