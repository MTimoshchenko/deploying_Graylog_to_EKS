variable "aws_region" {
  type        = string
  description = "Default AWS region."
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS profile to connect to AWS."
  default     = "max_timoshchenko"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name."
  default     = "graylog"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name."
  default     = "graylog-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC ID CIDR map."
  default     = "10.5.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones in which to create the subnets."
  default     = ["us-east-1a", "us-east-1b"]
}

//variable "internal_dns_zone" {
//  type        = string
//  description = "Internal dns zone name."
//  default = "domainname.com"
//}
//
//variable "vpc_id" {
//  type        = string
//  description = "ID of a created VPC."
//}