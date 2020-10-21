variable "environment" {
  type        = string
  description = "Environment name."
  default     = "dev"
}

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

variable "vpc_cidr" {
  type        = string
  description = "VPC ID CIDR map."
  default     = "10.0.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones in which to create the subnets."
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "instance_type" {
  type        = string
  description = "Type of instance. exp: t2.micro."
  default     = "t2.micro"
}

variable "additional_userdata" {
  type        = string
  description = "Additional userdata."
  default     = "echo I'm ok"
}

variable "asg_desired_capacity" {
  type        = number
  default     = 2
}

//variable "internal_dns_zone" {
//  type        = string
//  description = "Internal dns zone name."
//  default = "domainname.com"
//}