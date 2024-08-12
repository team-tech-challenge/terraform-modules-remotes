# Remote Module: aws_lambda_event_source_mapping

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
| [aws_lambda_event_source_mapping.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_batch_size"></a> [batch\_size](#input\_batch\_size) | The largest number of records that Lambda will retrieve from your event source at the time of invocation. | `number` | `null` | no |
| <a name="input_create_lambda_event_source_mapping"></a> [create\_lambda\_event\_source\_mapping](#input\_create\_lambda\_event\_source\_mapping) | A boolean flag to control whether the Lambda event source mapping should be created | `bool` | `true` | no |
| <a name="input_event_source_arn"></a> [event\_source\_arn](#input\_event\_source\_arn) | The ARN of the event source. This is the ARN of the Kinesis or DynamoDB stream, SQS queue, or other event source. | `string` | `null` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the Lambda function to invoke when events are published to the event source. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

