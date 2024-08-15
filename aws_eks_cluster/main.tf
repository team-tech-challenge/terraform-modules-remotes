resource "aws_eks_cluster" "this" {

  count = var.create_aws_eks_cluster ? 1 : 0

  name     = var.eks_cluster_name
  role_arn = var.eks_cluster_role_arn

  kubernetes_network_config {
    service_ipv4_cidr = var.eks_cluster_net_config_service_ipv4_cidr
    ip_family         = var.eks_cluster_net_config_ip_family
  }

  vpc_config {
    subnet_ids              = var.eks_cluster_vpc_config_subnet_ids
    security_group_ids      = var.eks_cluster_vpc_config_security_group_ids
    endpoint_private_access = var.eks_cluster_endpoint_private_access
    endpoint_public_access  = var.eks_cluster_endpoint_public_access
  }

  tags = var.eks_cluster_tags
}