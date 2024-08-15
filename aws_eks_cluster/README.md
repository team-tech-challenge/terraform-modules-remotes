# Remote Module: aws_eks_cluster

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
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_endpoint_private_access"></a> [eks\_cluster\_endpoint\_private\_access](#input\_eks\_cluster\_endpoint\_private\_access) | This is the flag to enable or disable private access to the EKS cluster endpoint. | `bool` | `true` | no |
| <a name="input_eks_cluster_endpoint_public_access"></a> [eks\_cluster\_endpoint\_public\_access](#input\_eks\_cluster\_endpoint\_public\_access) | This is the flag to enable or disable public access to the EKS cluster endpoint. | `bool` | `false` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | This is the name of the EKS cluster. | `string` | `""` | no |
| <a name="input_eks_cluster_net_config_ip_family"></a> [eks\_cluster\_net\_config\_ip\_family](#input\_eks\_cluster\_net\_config\_ip\_family) | This is the IP family for the EKS cluster network. | `string` | `""` | no |
| <a name="input_eks_cluster_net_config_service_ipv4_cidr"></a> [eks\_cluster\_net\_config\_service\_ipv4\_cidr](#input\_eks\_cluster\_net\_config\_service\_ipv4\_cidr) | This is the CIDR block for the EKS cluster network service. | `string` | `""` | no |
| <a name="input_eks_cluster_role_arn"></a> [eks\_cluster\_role\_arn](#input\_eks\_cluster\_role\_arn) | This is the ARN of the IAM role for the EKS cluster. | `string` | `""` | no |
| <a name="input_eks_cluster_tags"></a> [eks\_cluster\_tags](#input\_eks\_cluster\_tags) | This is the map of tags for the EKS cluster. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_eks_cluster_vpc_config_security_group_ids"></a> [eks\_cluster\_vpc\_config\_security\_group\_ids](#input\_eks\_cluster\_vpc\_config\_security\_group\_ids) | This is the list of security group IDs for the EKS cluster VPC configuration. | `list(string)` | `[]` | no |
| <a name="input_eks_cluster_vpc_config_subnet_ids"></a> [eks\_cluster\_vpc\_config\_subnet\_ids](#input\_eks\_cluster\_vpc\_config\_subnet\_ids) | This is the list of subnet IDs for the EKS cluster VPC configuration. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | The EKS Cluster ID |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | The EKS Cluster Name |
| <a name="output_eks_cluster_status"></a> [eks\_cluster\_status](#output\_eks\_cluster\_status) | The EKS Cluster Status |
| <a name="output_eks_cluster_version"></a> [eks\_cluster\_version](#output\_eks\_cluster\_version) | The EKS Cluster Version |
