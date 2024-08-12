# # Remote Module: aws_api_gateway_integration

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
| [aws_api_gateway_integration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_api_gateway_integration"></a> [create\_api\_gateway\_integration](#input\_create\_api\_gateway\_integration) | Whether to create the api gateway integration | `bool` | `true` | no |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | The HTTP method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY) for the resource | `string` | `null` | no |
| <a name="input_integration_http_method"></a> [integration\_http\_method](#input\_integration\_http\_method) | The HTTP method for the integration (POST for Lambda functions) | `string` | `"POST"` | no |
| <a name="input_lambda_function_arn"></a> [lambda\_function\_arn](#input\_lambda\_function\_arn) | The ARN of the Lambda function to be invoked | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region where the API Gateway and Lambda function are deployed | `string` | `"us-east-1"` | no |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | The ID of the API Gateway resource | `string` | `null` | no |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | The ID of the associated REST API | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of integration (AWS, AWS\_PROXY, HTTP, HTTP\_PROXY, MOCK) | `string` | `"AWS_PROXY"` | no |
| <a name="input_uri"></a> [uri](#input\_uri) | The URI of the backend endpoint that the API Gateway integration connects to. For a Lambda function, this is the ARN of the Lambda function. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_integration_id"></a> [integration\_id](#output\_integration\_id) | The ID of the API Gateway Integration |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
