locals {
  subnet_prefix  = regex("^[0-9]{1,3}\\.[0-9]{1,3}", lookup(var.vpc_parameters, "vpc_cidr", null))
  azs_count      = length(lookup(var.vpc_parameters, "azs", null))
  range_limit    = local.azs_count + 1
  public_subnets = [
    for num in range(1, local.range_limit) :
          format("${local.subnet_prefix}.%d.0/24", num + 100)
  ]
  private_subnets = [
    for num in range(1, local.range_limit) :
          format("${local.subnet_prefix}.%d.0/24", num)
  ]
}