terraform {
  required_version = ">= 1.1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  cloud {
    organization = "enumerable-entity"
    workspaces {
      name = "Terraform-IaC-scripts"
    }
  }
  #   backend "s3" {
  #     bucket = "terraform-state-enumerable-entity"
  #     key    = "financy/dev"
  #     region = var.default_region
  #   }
}

provider "aws" {
  region = var.region
}