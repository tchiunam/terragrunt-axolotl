terraform {
  source = "${local.base_source_url}?ref=v0.0.3"
}

locals {
  base_source_url = "git:git@github.com:tchiunam/terraform-module.git//vpc"
}
