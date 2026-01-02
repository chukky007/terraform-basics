provider "aws" {
  region = "eu-west-1"
}

variable "bucket_name" {
  description = "The name of the bucket i wish to create"
}

variable "bucket_suffix" {
  default = "-abcd"
}

resource "aws_s3_bucket" "sap_bucket" {
  bucket = "${var.bucket_name}${var.bucket_suffix}"
}