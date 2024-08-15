# Remote Module: aws_target_group

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
| [aws_lb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_target_group"></a> [create\_target\_group](#input\_create\_target\_group) | Create AWS LB Target Group | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_target_groups"></a> [target\_groups](#input\_target\_groups) | List of target group configurations | <pre>list(object({<br>    name_prefix           = string<br>    vpc_id                = optional(string)<br>    protocol              = string<br>    port                  = number<br>    health_check_enabled  = bool<br>    health_check_path     = optional(string)<br>    health_check_port     = optional(string)<br>    health_check_protocol = optional(string)<br>    target_type           = optional(string)<br>    deregistration_delay  = optional(number)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | ARN do Target Group |
