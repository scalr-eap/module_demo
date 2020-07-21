terraform {
  backend "remote" {
    hostname = "my.scalr.com"
    organization = "org-ssccu6d5ch64lqg"
    workspaces {
      name = "mod-demo"
    }
  }
}

provider "aws" {
  region     = var.region
}

module "scalr_dynamic_vpc_dns" {
#	source  = "gitgub/my-repo/scalr_dynamic_vpc_dns/aws"
	source  = "my.scalr.com/acc-sscctbisjkl35b8/scalr_dynamic_vpc_dns/aws"
	version = "1.0.0"

  cidr              = var.cidr
  prefix            = var.prefix
  public            = var.public
  max_subnets       = var.max_subnets
}

output subnet_ids {
  value = module.scalr_dynamic_vpc_dns.subnet_ids
}

output subnet_cidrs {
  value = module.scalr_dynamic_vpc_dns.subnet_cidrs
}

output vpc_id {
  value = module.scalr_dynamic_vpc_dns.vpc_id
}
