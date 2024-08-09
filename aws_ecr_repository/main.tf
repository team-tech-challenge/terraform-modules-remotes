resource "aws_ecr_repository" "this" {

  count = var.create_ecr_repository ? 1 : 0

  name                 = var.ecr_repository_name
  image_tag_mutability = var.image_tag_mutability
  tags                 = var.ecr_tags
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}
