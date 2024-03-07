provider "aws" {
  region = var.region
}

resource "aws_dynamodb_table" "this" {
  count          = var.create_table ? 1 : 0
  name           = var.name
  hash_key       = var.hash_key
  stream_enabled = var.stream_enabled
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = merge(
    var.tags,
    {
      "Name"      = format("%s", var.name)
      Resource    = "DynamoDB"
      Service     = "terraform"
      Description = "terraform Lock state"


      CreatedBy = "Natália Granato"
    },
  )
}
