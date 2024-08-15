# Remote Module: aws_eks_addons

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
| [aws_eks_addon.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_aws_eks_addon"></a> [create\_aws\_eks\_addon](#input\_create\_aws\_eks\_addon) | Flag to determine if the EKS addons should be created | `bool` | `true` | no |
| <a name="input_eks_addons"></a> [eks\_addons](#input\_eks\_addons) | A map of EKS addons to create | <pre>map(object({<br>    cluster_name                = string<br>    addon_name                  = string<br>    addon_version               = string<br>    configuration_values        = string<br>    resolve_conflicts_on_create = string<br>    resolve_conflicts_on_update = string<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_addon_cluster_names"></a> [eks\_addon\_cluster\_names](#output\_eks\_addon\_cluster\_names) | The name of the EKS clusters |
| <a name="output_eks_addon_names"></a> [eks\_addon\_names](#output\_eks\_addon\_names) | The names of the EKS addons |
| <a name="output_eks_addon_resolve_conflicts_on_create"></a> [eks\_addon\_resolve\_conflicts\_on\_create](#output\_eks\_addon\_resolve\_conflicts\_on\_create) | The resolve conflicts on create values for the EKS addons |
| <a name="output_eks_addon_resolve_conflicts_on_update"></a> [eks\_addon\_resolve\_conflicts\_on\_update](#output\_eks\_addon\_resolve\_conflicts\_on\_update) | The resolve conflicts on update values for the EKS addons |
| <a name="output_eks_addon_versions"></a> [eks\_addon\_versions](#output\_eks\_addon\_versions) | The versions of the EKS addons |
