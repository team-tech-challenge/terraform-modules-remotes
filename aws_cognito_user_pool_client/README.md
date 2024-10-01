# Remote Module: aws_cognito_user_pool_client

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
| [aws_cognito_user_pool_client.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_token_validity"></a> [access\_token\_validity](#input\_access\_token\_validity) | The time limit in days that the access token is valid for. | `number` | `1` | no |
| <a name="input_create_user_pool_client"></a> [create\_user\_pool\_client](#input\_create\_user\_pool\_client) | Whether to create the user pool client. | `bool` | `true` | no |
| <a name="input_generate_secret"></a> [generate\_secret](#input\_generate\_secret) | Whether to generate a client secret. | `bool` | `false` | no |
| <a name="input_id_token_validity"></a> [id\_token\_validity](#input\_id\_token\_validity) | The time limit in days that the ID token is valid for. | `number` | `1` | no |
| <a name="input_prevent_user_existence_errors"></a> [prevent\_user\_existence\_errors](#input\_prevent\_user\_existence\_errors) | Whether to prevent user existence errors. | `bool` | `false` | no |
| <a name="input_refresh_token_validity"></a> [refresh\_token\_validity](#input\_refresh\_token\_validity) | The time limit in days that the refresh token is valid for. | `number` | `30` | no |
| <a name="input_user_pool_client_name"></a> [user\_pool\_client\_name](#input\_user\_pool\_client\_name) | The name of the user pool client. | `string` | `null` | no |
| <a name="input_user_pool_id"></a> [user\_pool\_id](#input\_user\_pool\_id) | The ID of the user pool. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_pool_client_id"></a> [user\_pool\_client\_id](#output\_user\_pool\_client\_id) | n/a |
| <a name="output_user_pool_client_secret"></a> [user\_pool\_client\_secret](#output\_user\_pool\_client\_secret) | n/a |
