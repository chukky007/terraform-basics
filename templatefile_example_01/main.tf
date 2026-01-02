provider "aws" {
  region = "eu-west-1"
}

locals {
  rendered = templatefile("./example.tpl", { name = "Kelvin", number = 7 })
}

output "rendered_template" {
  value = local.rendered
}