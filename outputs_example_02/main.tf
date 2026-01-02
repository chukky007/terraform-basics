provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "chuka_second_bucket" {
  bucket = "chuka-second-bucket"
}

output "bucket_name" {
  value = aws_s3_bucket.chuka_second_bucket.id
}

output "bucket_arn" {
  value = aws_s3_bucket.chuka_second_bucket.arn
}

output "bucket_information" {
  value = "bucket name: ${aws_s3_bucket.chuka_second_bucket.id}, bucket arn: ${aws_s3_bucket.chuka_second_bucket.arn}"
}