provider "aws" {
  region = "eu-west-1"
}

variable "bucket_name" {
  description = "the name of the bucket i want to create"
}

resource "aws_s3_bucket" "smart_bucket" {
  bucket = var.bucket_name
}