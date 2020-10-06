module "dns_private" {
  source        = "../dns_zone"
  vpc_id        = module.vpc.vpc_id
  dns_zone_name = var.internal_dns_zone
  is_private    = true
}