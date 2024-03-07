resource "aws_s3_bucket" "this" {

  bucket        = var.name
  force_destroy = var.force_destroy

  dynamic "versioning" {
    for_each = length(var.versioning) != 0 ? [var.versioning] : []

    content {
      enabled    = lookup(versioning.value, "enabled", null)
      mfa_delete = lookup(versioning.value, "mfa_delete", null)
    }
  }
  tags = merge(
    var.tags,
    {
      CreatedBy = "terraform"
    },
  )
}


resource "aws_s3_bucket_accelerate_configuration" "this" {
  count = var.acceleration_status != null ? 1 : 0

  bucket                = aws_s3_bucket.this.bucket
  expected_bucket_owner = var.expected_bucket_owner

  status = title(lower(var.acceleration_status))
}

resource "aws_kms_key" "kms_s3" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}
resource "aws_s3_bucket_server_side_encryption_configuration" "s3-encrypt" {
  bucket = aws_s3_bucket.this.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "bucket_block" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}
