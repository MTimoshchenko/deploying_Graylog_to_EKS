module "vpc" {
  source            = "../../infrastructure-modules/vpc"
  global_parameters = var.global_parameters
  vpc_parameters    = var.vpc_parameters
}

//module "sg" {
//  source            = "../../infrastructure-modules/sg"
//  global_parameters = var.global_parameters
//  vpc_id            = module.vpc.vpc_id
//}

//module "nat_eip" {
//  source = "../../infrastructure-modules/eip"
//  global_parameters  = var.global_parameters
//}

module "eks" {
  source             = "../../infrastructure-modules/eks"
  global_parameters  = var.global_parameters
  eks_parameters     = var.eks_parameters
  vpc_id             = module.vpc.vpc_id
  private_subnets_id = module.vpc.private_subnets
//  sg_id              = module.sg.sg_id.this_security_group_id
}