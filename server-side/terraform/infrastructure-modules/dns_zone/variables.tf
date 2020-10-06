variable "dns_zone_name" {
  type        = string
  description = "DNS zone name."
}

variable "is_private" {
  type        = bool
  description = "The choice to create a private or public DNS zone."
}