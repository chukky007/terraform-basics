provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "chuka_trial_bucket" {
  bucket = "chuka-trial-bucket"
}

# resource "aws_vpc" "chuka_vpc" {
#   cidr_block = "10.0.0.0/16"  
# }

# resource "aws_security_group" "chuka_sg" {
#   vpc_id = aws_vpc.chuka_vpc.id
#   name   = "chuka_security_group"
# }

# resource "aws_security_group_rule" "tls_in" {
#   protocol = "tcp"
#   from_port = 443
#   to_port = 443
#   type = "ingress"
#   security_group_id = aws_security_group.chuka_sg.id
#   cidr_blocks = ["0.0.0.0/0"]
# }

# resource "aws_security_group_rule" "http_in" {
#   protocol = "tcp"
#   from_port = 80
#   to_port = 80
#   type = "ingress"
#   security_group_id = aws_security_group.chuka_sg.id
#   cidr_blocks = ["0.0.0.0/0"]  
# }