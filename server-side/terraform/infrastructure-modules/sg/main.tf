module "sg" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "3.16.0"
  name        = "${lookup(var.global_parameters, "environment", null)}-${lookup(var.global_parameters, "cluster_name", null)}-sg"
  description = "${lookup(var.global_parameters, "environment", null)}-${lookup(var.global_parameters, "cluster_name", null)}-sg"
  vpc_id      = var.vpc_id

  tags = {
    Name    = "${lookup(var.global_parameters, "environment", null)}-${lookup(var.global_parameters, "cluster_name", null)}-sg"
    Cluster = lookup(var.global_parameters, "cluster_name", null)
  }
}