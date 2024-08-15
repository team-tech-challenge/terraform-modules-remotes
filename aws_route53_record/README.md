# Remote Module: aws_route53_record

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.43.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.43.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_record_route53"></a> [create\_record\_route53](#input\_create\_record\_route53) | Create a record in Route53 | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the record | `string` | `null` | no |
| <a name="input_records"></a> [records](#input\_records) | A list of records | `list(string)` | `null` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The TTL of the record | `number` | `300` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the record.Valid values are A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, SOA, SPF, SRV, TXT, and HINFO | `string` | `null` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The ID of the hosted zone to contain this record | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
