provider "aws" {
  region = "eu-west-1"
}

data "aws_s3_bucket" "bucket" {
  bucket = "chuka-trial-bucket"
}

resource "aws_iam_policy" "chuka_bucket_policy" {
  name = "chuka-bucket-policy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${data.aws_s3_bucket.bucket.arn}"
      ]
    }
  ]
  }
  POLICY
}