module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "13.0.0"
  cluster_name    = "${var.environment}-${var.cluster_name}"
  cluster_version = "1.18"
  subnets         = var.private_subnets_id
  vpc_id          = var.vpc_id

  tags = {
    Environment = var.environment
    AppName     = var.cluster_name
  }

  node_groups_defaults = {
    ami_type = "AL2_x86_64"
    disk_size = 50
  }

  node_groups = {
    first = {
      aws_region                    = var.aws_region
      instance_type                 = var.instance_type
      additional_userdata           = var.additional_userdata
      additional_security_group_ids = var.sg_id
      desired_capacity              = var.asg_desired_capacity
      max_capacity                  = 4
      min_capacity                  = 2
      name                          = "group1"

      k8s_labels = {
        Environment = var.environment
        Cluster     = var.cluster_name
      }
      additional_tags = {
        ExtraTag = "first"
      }
    }
  }
}