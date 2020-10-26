module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "13.0.0"
  cluster_name    = "${lookup(var.global_parameters, "environment", null)}-${lookup(var.global_parameters, "cluster_name", null)}"
  cluster_version = "1.18"
  subnets         = var.private_subnets_id
  vpc_id          = var.vpc_id

  tags = {
    Environment = lookup(var.global_parameters, "environment", null)
    AppName     = lookup(var.global_parameters, "cluster_name", null)
  }

  node_groups_defaults = {
    ami_type = "AL2_x86_64"
    disk_size = 50
  }

  node_groups = {
    first = {
      aws_region                    = lookup(var.global_parameters, "aws_region", null)
      instance_type                 = lookup(var.eks_parameters, "instance_type", null)
      additional_userdata           = lookup(var.eks_parameters, "additional_userdata", null)
//      additional_security_group_ids = var.sg_id
      desired_capacity              = lookup(var.eks_parameters, "asg_desired_capacity", null)
      max_capacity                  = lookup(var.eks_parameters, "asg_max_capacity", null)
      min_capacity                  = lookup(var.eks_parameters, "asg_min_capacity", null)
      name                          = "group1"
      ec2_ssh_key                   = lookup(var.eks_parameters, "key_pair_name", null)

      tags = {
        Name = "${lookup(var.global_parameters, "environment", null)}-${lookup(var.global_parameters, "cluster_name", null)}"
      }
      k8s_labels = {
        Environment       = lookup(var.global_parameters, "environment", null)
        Cluster           = lookup(var.global_parameters, "cluster_name", null)
        Region            = lookup(var.global_parameters, "aws_region", null)
        KubernetesCluster = "${lookup(var.global_parameters, "environment", null)}-${lookup(var.global_parameters, "cluster_name", null)}"
      }
      additional_tags = {
        ExtraTag = "first"
      }
    }
  }

  map_roles    = var.map_roles
  map_users    = var.map_users
  map_accounts = var.map_accounts
}