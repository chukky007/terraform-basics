provider "aws" {
  region = "eu-west-1"
}

module "work_queue" {
    source = "github.com/chukky007/terraform-basics//modules_example_01/sqs-with-backoff"
    queue_name = "work-queue"
}

output "work_queue" {
  value = module.work_queue.queue
}

output "work_queue_dead_letter_queue" {
  value = module.work_queue.dead_letter_queue
}