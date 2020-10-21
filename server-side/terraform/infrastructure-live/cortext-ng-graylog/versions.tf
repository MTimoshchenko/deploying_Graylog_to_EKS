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
  profile = var.aws_profile
  region = var.aws_region
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