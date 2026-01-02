provider "aws" {
  region = "eu-west-1"
}

resource "aws_sqs_queue" "test_queue" {
  name                      = "test-queue_2"
  visibility_timeout_seconds = 45  
}