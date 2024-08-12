# # Remote Module: aws_api_gateway_deployment

<!-- BEGIN_TF_DOCS -->
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
| [aws_api_gateway_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_gateway_description"></a> [api\_gateway\_description](#input\_api\_gateway\_description) | The description of the deployment | `string` | `null` | no |
| <a name="input_api_gateway_rest_api_id"></a> [api\_gateway\_rest\_api\_id](#input\_api\_gateway\_rest\_api\_id) | The ID of the REST API for which the deployment will be associated | `string` | `null` | no |
| <a name="input_create_api_gateway_deployment"></a> [create\_api\_gateway\_deployment](#input\_create\_api\_gateway\_deployment) | Whether to create the API Gateway deployment | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deployment_id"></a> [deployment\_id](#output\_deployment\_id) | n/a |
<!-- END_TF_DOCS -->
