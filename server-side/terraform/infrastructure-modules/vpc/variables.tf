variable "cluster_name" {
  type        = string
  description = "Cluster name."
}

variable "vpc_name" {
  type        = string
  description = "VPC Name."
}

variable "vpc_cidr" {
  type        = string
  description = "VPC ID CIDR map."
}

variable "azs" {
  type        = list(string)
  description = "Availability zones in which to create the subnets".
}

variable "internal_dns_zone" {
  type        = string
  description = "Internal dns zone name."
}