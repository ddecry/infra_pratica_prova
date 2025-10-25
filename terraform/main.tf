terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

# Provider AWS para LocalStack
provider "aws" {
  alias                       = "localstack_s3"
  region                      = var.aws_region
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

# Bucket S3
resource "aws_s3_bucket" "app_bucket" {
  provider = aws.localstack_s3
  bucket   = var.bucket_name
}

# ACL do bucket
resource "aws_s3_bucket_acl" "app_bucket_acl" {
  provider = aws.localstack_s3
  bucket   = aws_s3_bucket.app_bucket.id
  acl      = "private"
}
