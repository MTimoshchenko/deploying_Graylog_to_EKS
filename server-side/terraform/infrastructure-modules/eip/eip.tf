resource "aws_eip" "this" {
  count = var.eip_count
  vpc   = true
  tags = {
    "Name"    = format("${var.eip_name}-%02d", count.index + 1)
    "Cluster" = var.cluster_name
  }
}