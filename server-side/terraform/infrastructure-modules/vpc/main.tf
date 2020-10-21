module "vpc" {
  source                   = "terraform-aws-modules/vpc/aws"
  version                  = "2.57.0"
  name                     = "${var.cluster_name}-vpc"
  azs                      = var.azs
  cidr                     = var.vpc_cidr
  enable_dns_hostnames     = var.enable_dns_hostnames
  enable_dns_support       = var.enable_dns_support
  enable_s3_endpoint       = var.enable_s3_endpoint
  instance_tenancy         = var.instance_tenancy
  private_subnets          = local.private_subnets
  public_subnets           = local.public_subnets
  manage_default_vpc       = var.manage_default_vpc

  enable_nat_gateway       = var.enable_nat_gateway
  single_nat_gateway       = var.single_nat_gateway
  one_nat_gateway_per_az   = var.one_nat_gateway_per_az

  reuse_nat_ips            = var.reuse_nat_ips
//  external_nat_ip_ids      = module.nat_eip.eip_ids
  enable_dhcp_options      = false
//  dhcp_options_domain_name = var.internal_dns_zone

  tags = {
    "Cluster" = var.cluster_name
  }

  public_subnet_tags = {
    "Tier" = "public"
  }

  private_subnet_tags = {
    "Tier" = "private"
  }
}