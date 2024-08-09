resource "aws_ecr_lifecycle_policy" "this" {

  count = var.create_ecr_lifecycle_repository ? 1 : 0

  repository = var.ecr_repository_name_policy
  policy = jsonencode({
    rules = [
      {
        rulePriority = 2
        description  = "Keep only the last 5 images"
        selection = {
          tagStatus   = "any"
          countType   = "imageCountMoreThan"
          countNumber = 5
        }
        action = {
          type = "expire"
        }
      },
      {
        rulePriority = 1
        description  = "Expire untagged images older than 14 days"
        selection = {
          tagStatus   = "untagged"
          countType   = "sinceImagePushed"
          countUnit   = "days"
          countNumber = 14
        }
        action = {
          type = "expire"
        }
      }
    ]
  })
}
