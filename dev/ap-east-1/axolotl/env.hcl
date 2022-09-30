locals {
  region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl"))

  environment = "dahk"

  subnet_publics = {
    public_1a = {
      name              = "public-1a"
      cidr_block        = "10.220.244.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    public_1b = {
      name              = "public-1b"
      cidr_block        = "10.220.249.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    public_1c = {
      name              = "public-1c"
      cidr_block        = "10.220.254.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
  }

  subnet_prviate_general = {
    # General subnet for general applications
    private_1a = {
      name              = "private-gen-1a"
      cidr_block        = "10.220.242.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_1b = {
      name              = "private-gen-1b"
      cidr_block        = "10.220.247.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_1c = {
      name              = "private-gen-1c"
      cidr_block        = "10.220.252.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    # General subnet for general middleware
    private_2a = {
      name              = "private-gen-2a"
      cidr_block        = "10.220.242.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_2b = {
      name              = "private-gen-2b"
      cidr_block        = "10.220.247.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_2c = {
      name              = "private-gen-2c"
      cidr_block        = "10.220.252.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    # General subnet for pii applications
    private_3a = {
      name              = "private-gen-3a"
      cidr_block        = "10.220.240.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_3b = {
      name              = "private-gen-3b"
      cidr_block        = "10.220.245.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_3c = {
      name              = "private-gen-3c"
      cidr_block        = "10.220.250.0/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    # General subnet for pii middleware
    private_4a = {
      name              = "private-gen-4a"
      cidr_block        = "10.220.240.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_4b = {
      name              = "private-gen-4b"
      cidr_block        = "10.220.245.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
    private_4c = {
      name              = "private-gen-4c"
      cidr_block        = "10.220.250.128/25"
      availability_zone = "${local.region_vars.locals.aws_region}a"
    }
  }
}
