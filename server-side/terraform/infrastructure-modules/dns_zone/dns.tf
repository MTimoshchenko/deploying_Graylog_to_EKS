resource "aws_route53_zone" "dns" {
  name    = var.dns_zone_name
  comment = "${local.dns_name_prefix} DNS zone created by Terraform"

  dynamic "vpc" {
    for_each = range(local.is_private)

    content {
      vpc_id = var.vpc_id
    }
  }

  lifecycle {
    prevent_destroy = false
  }
}