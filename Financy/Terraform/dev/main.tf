#==============================
# Author: Enumerable-entity 
# Writed for be under Free Tier usage on AWS

module "aws_vpc" {
  source                   = "../modules/network"
  environment              = var.environment
  vpc_name                 = var.vpc_name
  vpc_cidr_block           = var.vpc_cidr_block
  vpc_instance_tenancy     = var.vpc_instance_tenancy
  vpc_enable_dns_support   = var.vpc_enable_dns_support
  vpc_enable_dns_hostnames = var.vpc_enable_dns_hostnames
}