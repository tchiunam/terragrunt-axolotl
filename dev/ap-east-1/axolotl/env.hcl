locals {
  region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl"))

  environment = "dahk"

  subnet_publics = {
    public_1a = {
      name              = "public-1a"
      cidr_block        = "10.220.244.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
  }

  subnet_prviate_general = {
    # General subnet for applications
    private_1a = {
      name              = "private-gen-1a"
      cidr_block        = "10.220.242.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    # General subnet for managed services
    private_2a = {
      name              = "private-gen-2a"
      cidr_block        = "10.220.242.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
  }
}
