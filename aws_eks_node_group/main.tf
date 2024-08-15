resource "aws_eks_node_group" "this" {

  count = var.create_node_group ? 1 : 0

  cluster_name         = var.cluster_name
  node_group_name      = "${var.cluster_name}-node-group"
  node_role_arn        = var.node_role_arn
  subnet_ids           = var.subnet_ids
  release_version      = var.release_version
  force_update_version = var.force_update_version

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types = var.instance_types
  ami_type       = var.ami_type
  disk_size      = var.disk_size
  capacity_type  = var.capacity_type

  tags = merge(var.tags, {
    Name = "${var.cluster_name}-node-group"
  })
}
