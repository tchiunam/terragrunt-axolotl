terraform {
  source = "${local.base_source_url}?ref=v1.0.0"
}

locals {
  base_source_url = "git:git@github.com:tchiunam/terraform-module.git//vpc"
}
