output "bucket_arn" {
  value = aws_s3_bucket.app_bucket.arn
}

output "bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "bucket_acl" {
  value = aws_s3_bucket_acl.app_bucket_acl.acl
}
