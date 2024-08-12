# Remote Module: aws_api_gateway_method

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
| [aws_api_gateway_method.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorization"></a> [authorization](#input\_authorization) | The type of authorization used for the method (NONE, AWS\_IAM, CUSTOM, COGNITO\_USER\_POOLS) | `string` | `"NONE"` | no |
| <a name="input_create_api_gateway_method"></a> [create\_api\_gateway\_method](#input\_create\_api\_gateway\_method) | Whether to create the api gateway method | `bool` | `true` | no |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | The HTTP method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY) for the resource | `string` | `"ANY"` | no |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | The ID of the API Gateway resource | `string` | `null` | no |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | The ID of the associated REST API | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_http_method"></a> [http\_method](#output\_http\_method) | The HTTP method configured for the API Gateway resource. This specifies the type of request (GET, POST, PUT, DELETE, etc.) that the API Gateway will accept and process for the specified resource. If the API Gateway method is created, this output will return the HTTP method; otherwise, it will return an empty string. |
| <a name="output_method_id"></a> [method\_id](#output\_method\_id) | The ID of the API Gateway Method |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


