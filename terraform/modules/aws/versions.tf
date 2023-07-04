terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.5.0"
    }
  }
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.22.0"
}

provider "aws" {
  # set token in env var
  region = "us-east-2"
}