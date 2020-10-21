module "vpc" {
  source       = "../../infrastructure-modules/vpc"
  azs          = var.azs
  vpc_cidr     = var.vpc_cidr
  cluster_name = var.cluster_name
}

module "sg" {
  source       = "../../infrastructure-modules/sg"
  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
}

module "eks" {
  aws_region           = var.aws_region
  source               = "../../infrastructure-modules/eks"
  cluster_name         = var.cluster_name
  environment          = var.environment
  instance_type        = var.instance_type
  vpc_id               = module.vpc.vpc_id
  private_subnets_id   = module.vpc.private_subnets
  additional_userdata  = var.additional_userdata
  asg_desired_capacity = var.asg_desired_capacity
  sg_id                = module.sg.sg_id.this_security_group_id
}