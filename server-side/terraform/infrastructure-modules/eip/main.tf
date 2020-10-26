resource "aws_eip" "this" {
  count = var.eip_count
  vpc   = true
  tags = {
    "Name"    = format("${lookup(var.global_parameters, "cluster_name", null)}-%02d", count.index + 1)
    "Cluster" = lookup(var.global_parameters, "cluster_name", null)
  }
}