# Remote Module: aws_lambda_permission

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
| [aws_lambda_permission.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | The action that the principal can use on the function. Typically, this is 'lambda:InvokeFunction'. | `string` | `null` | no |
| <a name="input_create_lambda_permission"></a> [create\_lambda\_permission](#input\_create\_lambda\_permission) | Whether to create the lambda function permission | `bool` | `true` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the Lambda function for which you are granting permission to invoke. | `string` | `null` | no |
| <a name="input_principal"></a> [principal](#input\_principal) | The entity for which you are granting the Lambda function invocation permission. This is typically a service principal like 'events.amazonaws.com' for CloudWatch Events. | `string` | `null` | no |
| <a name="input_source_arn"></a> [source\_arn](#input\_source\_arn) | The ARN of the resource that is invoking the Lambda function. This is used to specify the source resource for the permission. | `string` | `null` | no |
| <a name="input_statement_id"></a> [statement\_id](#input\_statement\_id) | A unique identifier for the statement. Typically, a statement ID helps you to identify which statement in a policy you are referring to. Each statement ID must be unique within the policy. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

