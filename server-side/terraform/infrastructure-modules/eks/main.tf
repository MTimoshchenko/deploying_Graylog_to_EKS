module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "13.0.0"
  cluster_name = var.cluster_name
  cluster_version = "1.17"
  subnets = ""
  vpc_id = ""

  tags = {
    Environment = var.environment
    AppName     = var.cluster_name
  }

  worker_groups = [
    {
      name = "${var.cluster_name}-group-1"
      instance_type = var.instance_type
      additional_userdata = var.additional_userdata
      asg_desired_capacity = var.asg_desired_capacity
      additional_security_group_ids = ""
    },
  ]
}