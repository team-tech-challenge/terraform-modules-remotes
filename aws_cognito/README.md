# Remote Module: aws_cognito

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
| [aws_cognito_user_pool.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_verified_attributes"></a> [auto\_verified\_attributes](#input\_auto\_verified\_attributes) | The list of attributes that are auto-verified. | `list(string)` | <pre>[<br>  "email"<br>]</pre> | no |
| <a name="input_create_aws_cognito_user_pool"></a> [create\_aws\_cognito\_user\_pool](#input\_create\_aws\_cognito\_user\_pool) | Whether to create the Cognito User Pool. | `bool` | `false` | no |
| <a name="input_email_verification_message"></a> [email\_verification\_message](#input\_email\_verification\_message) | The message template for the email verification message. | `string` | `"Your verification code is {####}"` | no |
| <a name="input_email_verification_subject"></a> [email\_verification\_subject](#input\_email\_verification\_subject) | The subject of the email verification message. | `string` | `"Your verification code"` | no |
| <a name="input_mfa_configuration"></a> [mfa\_configuration](#input\_mfa\_configuration) | The MFA configuration for the Cognito User Pool. | `string` | `"OFF"` | no |
| <a name="input_password_minimum_length"></a> [password\_minimum\_length](#input\_password\_minimum\_length) | The minimum length of the password. | `number` | `8` | no |
| <a name="input_password_require_lowercase"></a> [password\_require\_lowercase](#input\_password\_require\_lowercase) | Whether the password must contain a lowercase letter. | `bool` | `true` | no |
| <a name="input_password_require_numbers"></a> [password\_require\_numbers](#input\_password\_require\_numbers) | Whether the password must contain a number. | `bool` | `true` | no |
| <a name="input_password_require_symbols"></a> [password\_require\_symbols](#input\_password\_require\_symbols) | Whether the password must contain a symbol. | `bool` | `true` | no |
| <a name="input_password_require_uppercase"></a> [password\_require\_uppercase](#input\_password\_require\_uppercase) | Whether the password must contain an uppercase letter. | `bool` | `true` | no |
| <a name="input_sms_verification_message"></a> [sms\_verification\_message](#input\_sms\_verification\_message) | The message template for the SMS verification message. | `string` | `"Your verification code is {####}"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the Cognito User Pool. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_user_pool_name"></a> [user\_pool\_name](#input\_user\_pool\_name) | The name of the Cognito User Pool. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_pool_arn"></a> [user\_pool\_arn](#output\_user\_pool\_arn) | The ARN of the user pool. |
| <a name="output_user_pool_endpoint"></a> [user\_pool\_endpoint](#output\_user\_pool\_endpoint) | The endpoint of the user pool. |
| <a name="output_user_pool_id"></a> [user\_pool\_id](#output\_user\_pool\_id) | The ID of the user pool. |
| <a name="output_user_pool_name"></a> [user\_pool\_name](#output\_user\_pool\_name) | The name of the user pool. |
