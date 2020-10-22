variable "global_parameters" {
  description = "Global variables for each module."
}

variable "vpc_parameters" {
  description = "Parameters for vpc creation: cidr and azs"
}

//variable "internal_dns_zone" {
//  type        = string
//  description = "Internal dns zone name."
//}