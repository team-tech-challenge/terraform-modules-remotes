# Remote Module: aws_listener

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
| [aws_lb_listener.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_aws_lb_listener"></a> [create\_aws\_lb\_listener](#input\_create\_aws\_lb\_listener) | Boolean to determine whether to create the AWS LB listeners | `bool` | `true` | no |
| <a name="input_listeners"></a> [listeners](#input\_listeners) | List of listener configurations | <pre>list(object({<br>    load_balancer_arn = string<br>    port              = number<br>    protocol          = string<br>    ssl_policy        = optional(string)<br>    certificate_arn   = optional(string)<br>    default_actions = list(object({<br>      type = string<br>      forward = optional(object({<br>        target_group_arn = string<br>      }))<br>      redirect = optional(object({<br>        port        = string<br>        protocol    = string<br>        status_code = string<br>      }))<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |

## Outputs

No outputs.
