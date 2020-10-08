module "vpc" {
  source       = "../../infrastructure-modules/vpc"
  vpc_name     = var.vpc_name
  azs          = var.azs
  vpc_cidr     = var.vpc_cidr
  cluster_name = var.cluster_name
}

module "sg" {
  source = "../../infrastructure-modules/sg"
  cluster_name = var.cluster_name
  vpc_id = module.vpc.vpc_id
}