variable "aws_region" {
  type        = string
  description = "Default AWS region."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID CIDR map."
}

variable "sg_id" {
  type        = string
  description = "Security group ids"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name."
}

variable "environment" {
  type        = string
  description = "Environment name."
}

variable "private_subnets_id" {
  type        = list(string)
  description = "List of private subnets ID."
}

variable "instance_type" {
  type        = string
  description = "Type of instance. exp: t2-micro."
}

variable "additional_userdata" {
  type        = string
  description = "Additional userdata."
}

variable "asg_desired_capacity" {
  type        = number
  description = "Count of nodes in cluster."
}

variable "map_accounts" {
  description = "Additional AWS accounts to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "950313701701",
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::950313701701:role/aws-service-role/eks-nodegroup.amazonaws.com/AWSServiceRoleForAmazonEKSNodegroup"
      username = "AWSServiceRoleForAmazonEKSNodegroup"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::950313701701:user/mtimoshchenko"
      username = "mtimoshchenko"
      groups   = ["system:masters"]
    },
  ]
}