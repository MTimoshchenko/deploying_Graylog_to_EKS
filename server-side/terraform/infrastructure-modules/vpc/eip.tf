module "nat_eip" {
  source    = "../eip"
  name      = "${var.cluster_name}-nat"
  eip_count = length(var.azs)
  cluster   = var.cluster_name
}