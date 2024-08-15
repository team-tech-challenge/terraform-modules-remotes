# Remote Module: aws_iam_role_policy

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
| [aws_iam_role_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_aws_iam_role_policy"></a> [create\_aws\_iam\_role\_policy](#input\_create\_aws\_iam\_role\_policy) | Determines whether the IAM role should be created. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the IAM Role. | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The policy in JSON format that defines various permissions for AWS services. | `string` | `null` | no |
| <a name="input_role"></a> [role](#input\_role) | The role to be associated or specified for the given context, usually representing an AWS IAM role. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the IAM role policy. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

