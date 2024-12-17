terraform {
  required_version = "v1.10.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "tf-bucket23"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate (S)"
    dynamodb_table = "tf-infra-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
