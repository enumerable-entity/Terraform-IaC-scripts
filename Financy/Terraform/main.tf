terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
region = "eu-central-1"
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-state-enumerable-entity"
    key    = "dev/network/terraform.tfstate"
    region = "eu-central-1"
  }
}
output "newwork-state" {
  value = data.terraform_remote_state.network.outputs  # value interchange through outputs in tfstate file. One person make outputs, another read outputs from tfstate file in s3
}
