variable "enable_dns_hostnames" {
  type        = bool
  description = "The choice to enable dns hostnames."
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "The choice to enable dns support."
  default     = true
}

variable "enable_nat_gateway" {
  type        = bool
  description = "The choice to enable nat gateway."
  default     = true
}

variable "enable_s3_endpoint" {
  type        = bool
  description = "The choice to enable s3 endpoint."
  default     = true
}

variable "instance_tenancy" {
  type        = string
  description = "Instance tenancy."
  default     = "default"
}

variable "manage_default_vpc" {
  type        = bool
  description = "The choice to manage default VPC."
  default     = false
}

variable "reuse_nat_ips" {
  type        = bool
  description = "The choice to reuse nat ips."
  default     = true
}