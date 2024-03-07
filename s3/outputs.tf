output "id" {
  value       = aws_s3_bucket.this.id
  description = "Name of the Bucket"
  depends_on = [
    aws_s3_bucket.this
  ]
}

output "arn" {
  value       = aws_s3_bucket.this.arn
  description = "ARN of the Bucket"
  depends_on = [
    aws_s3_bucket.this
  ]
}
