variable "global_parameters" {
  description = "Global variables for each module."
  default = {
    cluster_name = "graylog"
    environment  = "dev"
    aws_region   = "us-east-1"
    aws_profile  = "max_timoshchenko"
  }
}

variable "vpc_parameters" {
  description = "Parameters for VPC creation."
  default = {
    vpc_cidr = "11.0.0.0/16"
    azs      = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }
}

variable "eks_parameters" {
  description = "Parameters for EKS creation."
  default = {
    instance_type        = "t2.medium"
    asg_desired_capacity = 3
    asg_max_capacity     = 4
    asg_min_capacity     = 2
    additional_userdata  = "echo I'm ok"
    key_pair_name        = "mtimoshchenko_us-east-1"
  }
}

//variable "internal_dns_zone" {
//  type        = string
//  description = "Internal dns zone name."
//  default = "domainname.com"
//}