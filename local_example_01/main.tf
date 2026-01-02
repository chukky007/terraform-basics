provider "aws" {
  region = "eu-west-1"
}

locals {
  first_part  = "hello"
  second_part = "${local.first_part}-there"
  bucket_name = "${local.second_part}-are-you-good-today"
}

resource "aws_s3_bucket" "trial_bucket_learning_locals" {
  bucket = local.bucket_name
}