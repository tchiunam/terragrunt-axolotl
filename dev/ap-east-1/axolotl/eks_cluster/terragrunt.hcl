terraform {
  source = "${include.envcommon.locals.base_source_url}?ref=v0.0.1"
}

include "root" {
  path = find_in_parent_folders()
}

include "envcommon" {
  path   = "${dirname(find_in_parent_folders())}/_envcommon/vpc.hcl"
  expose = true
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  cluster_vpc_subnet_ids = dependency.vpc.outputs.subnet_private_ids
}
