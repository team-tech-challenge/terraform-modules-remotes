resource "aws_network_acl" "this" {
  count  = var.create_network_acl ? 1 : 0
  vpc_id = var.aws_net_acl_vpc_id

  subnet_ids = var.aws_net_acl_subnet_ids

  dynamic "ingress" {
    for_each = var.aws_net_acl_ingress_rules
    content {
      protocol   = ingress.value.protocol
      rule_no    = ingress.value.rule_no
      action     = ingress.value.action
      cidr_block = ingress.value.cidr_block
      from_port  = ingress.value.from_port
      to_port    = ingress.value.to_port
      icmp_type  = ingress.value.icmp_type
      icmp_code  = ingress.value.icmp_code
    }
  }

  dynamic "egress" {
    for_each = var.aws_net_acl_egress_rules
    content {
      protocol   = egress.value.protocol
      rule_no    = egress.value.rule_no
      action     = egress.value.action
      cidr_block = egress.value.cidr_block
      from_port  = egress.value.from_port
      to_port    = egress.value.to_port
      icmp_type  = egress.value.icmp_type
      icmp_code  = egress.value.icmp_code
    }
  }

  tags = var.aws_net_acl_tags

}
