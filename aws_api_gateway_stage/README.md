# Remote Module: aws_api_gateway_stage

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
| [aws_api_gateway_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_deployment_id"></a> [api\_deployment\_id](#input\_api\_deployment\_id) | The deployment ID of the API Gateway deployment | `string` | `null` | no |
| <a name="input_api_rest_api_id"></a> [api\_rest\_api\_id](#input\_api\_rest\_api\_id) | The ID of the REST API | `string` | `null` | no |
| <a name="input_api_stage_description"></a> [api\_stage\_description](#input\_api\_stage\_description) | The description of the stage | `string` | `null` | no |
| <a name="input_api_stage_name"></a> [api\_stage\_name](#input\_api\_stage\_name) | The name of the stage | `string` | `null` | no |
| <a name="input_create_api_gateway_stage"></a> [create\_api\_gateway\_stage](#input\_create\_api\_gateway\_stage) | Whether to create an API Gateway stage | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_xray_tracing_enabled"></a> [xray\_tracing\_enabled](#input\_xray\_tracing\_enabled) | Whether active tracing with X-Ray is enabled | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_stage_name"></a> [stage\_name](#output\_stage\_name) | n/a |
<!-- END_TF_DOCS -->

