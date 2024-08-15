# Remote Module: aws_dynamodb_table

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attribute_name"></a> [attribute\_name](#input\_attribute\_name) | The name of the attribute to be used for the DynamoDB table. | `string` | `null` | no |
| <a name="input_attribute_type"></a> [attribute\_type](#input\_attribute\_type) | The type of the attribute to be used for the DynamoDB table. Must be one of 'S', 'N', or 'B'. | `string` | `null` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | Defines the billing mode of the AWS DynamoDB table. The options are 'PROVISIONED' for provisioned throughput and 'PAY\_PER\_REQUEST' for on-demand capacity. | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_create_aws_aws_dynamodb_table"></a> [create\_aws\_aws\_dynamodb\_table](#input\_create\_aws\_aws\_dynamodb\_table) | Determines whether the Dynamodb table should be created. | `bool` | `true` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | The hash key to be used for the DynamoDB table. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the DynamoDB table. | `string` | `null` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | The read capacity units for the DynamoDB table. | `number` | `2` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the DynamoDB table. | `map(string)` | <pre>{<br>  "ManagedBy": "True"<br>}</pre> | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | The write capacity units for the DynamoDB table. | `number` | `2` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


