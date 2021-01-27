# This is the output of the s3_bucket module

output "bucket_id" {
  value = aws_s3_bucket.bucket.id
  description = "Created bucket id"
}