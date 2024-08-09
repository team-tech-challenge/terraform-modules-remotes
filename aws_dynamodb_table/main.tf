resource "aws_dynamodb_table" "this" {

  count = var.create_aws_aws_dynamodb_table ? 1 : 0

  name           = var.name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  billing_mode   = var.billing_mode
  tags           = merge(var.tags)

  attribute {
    name = var.attribute_name
    type = var.attribute_type
  }
}





