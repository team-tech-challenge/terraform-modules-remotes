# Remote Module: aws_api_gateway_rest_api

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
| [aws_api_gateway_rest_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_description"></a> [api\_description](#input\_api\_description) | The description of the API Gateway API | `string` | `null` | no |
| <a name="input_api_name"></a> [api\_name](#input\_api\_name) | The name of the API Gateway API | `string` | `null` | no |
| <a name="input_create_api_gateway_rest_api"></a> [create\_api\_gateway\_rest\_api](#input\_create\_api\_gateway\_rest\_api) | Whether to create the api gateway rest api | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Defines tags to manage and control resources within the AWS environment. | `map(string)` | <pre>{<br>  "Terraform_Deploy": "True"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_execution_arn"></a> [execution\_arn](#output\_execution\_arn) | The execution ARN of the API Gateway, which is used to invoke the API. This ARN is crucial for integrating the API with other services or invoking it programmatically. If the API Gateway REST API is created, this output will return the execution ARN; otherwise, it will return an empty string. |
| <a name="output_rest_api_id"></a> [rest\_api\_id](#output\_rest\_api\_id) | The ID of the REST API |
| <a name="output_rest_parent_id"></a> [rest\_parent\_id](#output\_rest\_parent\_id) | The ID of the parent resource in the API Gateway. This ID is used to establish the hierarchical structure of the API resources. If the API Gateway resource is created, this output will return the parent ID of the resource, otherwise, it will return an empty string. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

