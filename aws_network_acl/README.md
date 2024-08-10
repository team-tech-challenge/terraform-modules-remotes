# Remote Module: aws_network_acl

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.43.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.43.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_network_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_acl) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_net_acl_egress_rules"></a> [aws\_net\_acl\_egress\_rules](#input\_aws\_net\_acl\_egress\_rules) | List of egress rules for the network ACL | <pre>list(object({<br>    protocol   = string<br>    rule_no    = number<br>    action     = string<br>    cidr_block = string<br>    from_port  = number<br>    to_port    = number<br>    icmp_type  = optional(number)<br>    icmp_code  = optional(number)<br>  }))</pre> | `[]` | no |
| <a name="input_aws_net_acl_ingress_rules"></a> [aws\_net\_acl\_ingress\_rules](#input\_aws\_net\_acl\_ingress\_rules) | List of ingress rules for the network ACL | <pre>list(object({<br>    protocol   = string<br>    rule_no    = number<br>    action     = string<br>    cidr_block = string<br>    from_port  = number<br>    to_port    = number<br>    icmp_type  = optional(number)<br>    icmp_code  = optional(number)<br>  }))</pre> | `[]` | no |
| <a name="input_aws_net_acl_subnet_ids"></a> [aws\_net\_acl\_subnet\_ids](#input\_aws\_net\_acl\_subnet\_ids) | Network ACL Subnet IDs | `list(string)` | `[]` | no |
| <a name="input_aws_net_acl_tags"></a> [aws\_net\_acl\_tags](#input\_aws\_net\_acl\_tags) | Network ACL Tags | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_aws_net_acl_vpc_id"></a> [aws\_net\_acl\_vpc\_id](#input\_aws\_net\_acl\_vpc\_id) | Network ACL VPC ID | `string` | `""` | no |
| <a name="input_create_network_acl"></a> [create\_network\_acl](#input\_create\_network\_acl) | Create Network ACL | `string` | `false` | no |

## Outputs

No outputs.
