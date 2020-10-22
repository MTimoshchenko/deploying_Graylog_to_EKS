terraform {
  required_version = ">=0.13, < 0.14"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    local = {
      source = "hashicorp/local"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "aws" {
  profile = lookup(var.global_parameters, "aws_profile", null)
  region  = lookup(var.global_parameters, "aws_region", null)
  version = ">= 3.9.0"
}

provider "local" {
  version = ">=1.4.0"
}

provider "random" {
  version = ">= 2.3.0"
}

provider "null" {
  version = ">= 2.1.2"
}

provider "template" {
  version = ">= 2.1.2"
}