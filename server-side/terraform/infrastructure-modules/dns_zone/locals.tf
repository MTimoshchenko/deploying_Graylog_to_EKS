locals {
  is_private      = var.is_private == true ? 1 : 0
  dns_name_prefix = var.is_private == true ? "Private" : "Public"
}