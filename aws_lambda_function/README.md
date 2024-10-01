# Remote Module: aws_lambda_function


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
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_architectures"></a> [architectures](#input\_architectures) | The list of architectures supported by the function.Options are x86\_64 and arm64. | `list(string)` | `null` | no |
| <a name="input_create_lambda_function"></a> [create\_lambda\_function](#input\_create\_lambda\_function) | Whether to create the lambda function | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the AWS Lambda function. | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | A map of environment variables that will be provided to the Lambda function. This allows you to dynamically adjust the runtime environment of your function without modifying the underlying code. Each environment variable is a key-value pair that can be used within the Lambda function to adapt its behavior or to provide essential configuration information. | `map(string)` | `null` | no |
| <a name="input_ephemeral_storage"></a> [ephemeral\_storage](#input\_ephemeral\_storage) | The size of ephemeral storage allocated for the Lambda function in MB. | `number` | `512` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | The path to the function's deployment package within the local filesystem. | `string` | `null` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the AWS Lambda function. | `string` | `null` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | The function handler that Lambda calls to begin execution. | `string` | `null` | no |
| <a name="input_image_uri"></a> [image\_uri](#input\_image\_uri) | URI of the container image. | `string` | `null` | no |
| <a name="input_layers"></a> [layers](#input\_layers) | List of Lambda Layer Version ARNs (maximum of 5) to attach to the Lambda function. | `list(string)` | `null` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | The amount of memory allocated to the Lambda function in MB. | `number` | `128` | no |
| <a name="input_package_type"></a> [package\_type](#input\_package\_type) | The packaging type of the Lambda function (e.g., Zip or Image). | `string` | `"Image"` | no |
| <a name="input_publish"></a> [publish](#input\_publish) | Determines whether to publish creation or updates of the Lambda function. | `bool` | `true` | no |
| <a name="input_role"></a> [role](#input\_role) | The IAM role attached to the Lambda function, defining its permissions. | `string` | `null` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime environment for the Lambda function. | `string` | `null` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | A list of security group IDs to associate with the Lambda function. | `list(string)` | `null` | no |
| <a name="input_source_code_hash"></a> [source\_code\_hash](#input\_source\_code\_hash) | Used to trigger updates in Lambda when the source code changes. | `string` | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of subnet IDs to associate with the Lambda function. | `list(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Defines tags to manage and control resources within the AWS environment. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | The maximum execution time of the Lambda function in seconds. | `number` | `30` | no |
| <a name="input_tracing_config"></a> [tracing\_config](#input\_tracing\_config) | The tracing configuration for the Lambda function. Specify 'Active' to enable X-Ray tracing or 'PassThrough' to use the tracing setting from the calling service. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ARN"></a> [ARN](#output\_ARN) | Amazon Resource Name (ARN) identifying your Lambda Function. |
| <a name="output_Description"></a> [Description](#output\_Description) | Description of your Lambda Function. |
| <a name="output_Image_URI"></a> [Image\_URI](#output\_Image\_URI) | URI of the container image used for your Lambda Function. |
| <a name="output_Last_modified"></a> [Last\_modified](#output\_Last\_modified) | Date this resource was last modified. |
| <a name="output_Memory"></a> [Memory](#output\_Memory) | Amount of memory your Lambda Function has in MB. |
| <a name="output_Name"></a> [Name](#output\_Name) | Date this resource was last modified. |
| <a name="output_Role"></a> [Role](#output\_Role) | The IAM role attached to your Lambda Function. |
| <a name="output_Tags"></a> [Tags](#output\_Tags) | Tags assigned to your Lambda Function. |
| <a name="output_Timeouts"></a> [Timeouts](#output\_Timeouts) | Amount of time your Lambda Function has to run in seconds. |
| <a name="output_Version"></a> [Version](#output\_Version) | Latest published version of your Lambda Function. |
