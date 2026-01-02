provider "aws" {
  region = "eu-west-1"
}

module "thread_queue" {
  source = "../modules_example_01/sqs-with-backoff"
  queue_name = "thread-queue"
}