module "sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "3.16.0"
  name = "${var.cluster_name}-sg"
  description = "${var.cluster_name}-sg"
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.cluster_name}-sg"
    Cluster = var.cluster_name
  }
}